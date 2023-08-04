<script lang="ts">
    import pepesitjam from "$lib/images/pepesitjam.gif";
    import {onMount} from "svelte";
    import TrackListTile from "./TrackListTile.svelte";
    import type {Track} from "$lib/types";

    const endpoint = "https://trovo.bullbulk.ru/items/tracks";


    let tracksList: Array<Track> = [];

    async function getTracks() {
        const response = await fetch(endpoint);
        tracksList = await response.json();
    }

    onMount(async function () {
        await getTracks();
    });

</script>

<div class="w-100">
    <div class="flex h-16 justify-center mb-4">
        <img class="h-16" src="{pepesitjam}" alt="jammin">
    </div>
    <h1 class="mb-12">
        История треков
    </h1>

    <div class="w-100 flex items-center flex-col">
        <div class="md:w-2/3 w-100 tracks-list">
            {#each tracksList as track}
                <div class="track-row">
                    <TrackListTile {...track}/>
                </div>
            {/each}
        </div>
    </div>
</div>

<style lang="scss">
  .tracks-list {
    display: flex;
    flex-direction: column;
    gap: 0.5rem;
  }

  .tracks-list > .track-row:not(:last-child) {
    border-bottom: solid 1px rgb(116, 122, 131);
  }
</style>
