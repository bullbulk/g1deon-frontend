<script lang="ts">
    import pepesitjam from "$lib/images/pepesitjam.gif";
    import {onMount} from "svelte";
    import TrackListTile from "./TrackListTile.svelte";
    import type {Track} from "$lib/types.d";
    import {API_URL} from "$lib/config";

    const endpoint = `${API_URL}/items/tracks`;


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
        <div class="w-100 px-2 md:px-12 lg:px-16 tracks-list">
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
    border-bottom: solid 1px var(--color-separator);
  }
</style>
