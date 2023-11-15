<script>
    import Nav from "$lib/components/Nav.svelte";
    import MainLogo from "$lib/components/MainLogo.svelte";

    import header_youtube from '$lib/images/header-youtube.svg';
    import header_trovo from '$lib/images/header-trovo.svg';
    import header_vk from '$lib/images/header-vk.svg';
</script>

<header class="p-6">
    <MainLogo/>

    <Nav/>

    <div class="socials">
        <div class="px-12 flex gap-5 justify-end items-center">
            <div class="socials__item">
                <a href="https://trovo.live/s/G1deonTV" target="_blank">
                    <img alt="Trovo G1deon" src="{header_trovo}">
                </a>
            </div>
            <div class="socials__item">
                <a href="https://youtube.com/G1deon" target="_blank">
                    <img alt="YouTube G1deon" src="{header_youtube}">
                </a>
            </div>
            <div class="socials__item">
                <a href="https://vk.com/gideoncherez1" target="_blank">
                    <img alt="VK G1deon" src="{header_vk}">
                </a>
            </div>
        </div>
    </div>
</header>

<style>
    header {
        display: flex;
        align-items: center;
        position: fixed;
        width: 100%;
        background-color: var(--color-bg-0);
        height: var(--header-height);
    }
</style>
