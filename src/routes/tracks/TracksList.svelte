<script lang="ts">
    import pepesitjam from "$lib/images/pepesitjam.gif";
    import {onMount} from "svelte";
    import TrackListTile from "./TrackListTile.svelte";
    import type {Track} from "$lib/types.d";
    import {API_URL} from "$lib/config";
    import {linear} from "svelte/easing"
    import {fade} from "svelte/transition"

    const endpoint = `${API_URL}/items/tracks`;


    let tracksList: Array<Track> = [];

    async function getTracks() {
        const response = await fetch(endpoint);
        tracksList = await response.json();
    }

    onMount(async function () {
        await getTracks();
    });

    setInterval(getTracks, 5000);

    function slideIn(node: Element, {delay = 0, duration = 500}) {
        return {
            duration,
            css: (t: number) => {
                return `transform: translateY(-${70 - linear(t) * 100}%); opacity: ${linear(t) * 100}%;`
            }
        };
    }
</script>

<div class="w-100 flex flex-col justify-start">
    <div class="flex h-16 justify-center mb-4">
        <img class="h-16" src="{pepesitjam}" alt="jammin">
    </div>
    <h1 class="mb-12">
        История треков
    </h1>

    <div class="flex-1 w-100 flex flex-col">
        <div class="w-100 px-1 md:px-12 lg:px-20 tracks-list">
            {#each tracksList as track (track.id)}
                <div transition:slideIn={{duration:400}} class="smooth-move track-row">
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
    position: relative;
  }

  .tracks-list > .track-row:not(:last-child) {
    border-bottom: solid 1px var(--color-separator);
  }
</style>
