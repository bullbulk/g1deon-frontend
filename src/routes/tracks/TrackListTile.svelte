<script lang="ts">
    import youtube_logo from '$lib/images/youtube.svg';

    export let title: string;
    export let owner: string;
    export let url: string;
    export let created_at: string;

    let date_created_at = new Date(created_at);
</script>

<div class="track-tile py-4 flex sm:gap-5 lg:gap-10">
    <a href="{url}" target="_blank">
        <div class="flex-1 flex flex-col gap-1 justify-between">
            <div class="text-md sm:text-xl"><b>{title}</b></div>
            <div class="text-sm text-gray-400">{owner}</div>
        </div>
        <div class="flex flex-col justify-start sm:justify-center sm:flex-row gap-1 sm:gap-5 lg:gap-10">
            <div class="flex flex-col items-end sm:items-center">
                <div class="text-md">
                    {date_created_at.toLocaleTimeString("ru-RU", {
                        hour: '2-digit',
                        minute: '2-digit',
                    })}
                </div>
                <div class="text-sm text-gray-400">{date_created_at.toLocaleDateString("ru-RU", {
                    year: 'numeric',
                    month: 'numeric',
                    day: 'numeric',
                })}</div>
            </div>
            <div class="flex justify-end sm:justify-center">
                <img class="w-10 sm:w-14" src="{youtube_logo}" alt="YT Link">
            </div>
        </div>
    </a>
</div>
