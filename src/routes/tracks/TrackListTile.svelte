<script lang="ts">
    import youtube_logo from '$lib/images/youtube.svg';
    import type {Track} from "$lib/types";

    export let track: Track;

    let date_created_at = new Date(track.created_at);
</script>


<div class="track-tile py-4 flex gap-5 lg:gap-10">
    <div class="flex-1 flex flex-col gap-1 justify-between">
        <div class="text-sm sm:text-xl"><b>{track.title}</b></div>
        <div class="text-sm text-gray-400">{track.owner}</div>
    </div>
    <a href="{track.url}" target="_blank">
        <div class="left-separator !pl-6 sm:!pl-0 sm:!border-none flex flex-col h-fit justify-start sm:justify-center sm:flex-row gap-1 sm:gap-5">
            <div class="left-separator !border-0 sm:!border-l-[1px] !pl-0 sm:!pl-8 flex flex-col items-end sm:items-center">
                <div class="text-sm sm:text-md">
                    <b>{
                        date_created_at.toLocaleTimeString("ru-RU", {
                            hour: '2-digit',
                            minute: '2-digit',
                        })
                    }</b>
                </div>
                <div class="text-sm text-gray-400">{
                    date_created_at.toLocaleDateString("ru-RU", {
                        year: 'numeric',
                        month: 'numeric',
                        day: 'numeric',
                    })
                }</div>
            </div>
            <div class="flex justify-end sm:justify-center">
                <img alt="YT Link" class="w-10 sm:w-14 h-fit" src="{youtube_logo}">
            </div>
        </div>
    </a>
</div>


<style>
    .left-separator {
        border-left: solid 1px var(--color-separator-accent);
        padding-left: 2rem;
    }
</style>