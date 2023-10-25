<script>
    import logo from '$lib/images/g1deon-logo.svg';
    import Nav from "$lib/components/Nav.svelte";
</script>

<header>
    <div class="corner">
        <a href="https://trovo.live/s/G1deonTV" target="_blank">
            <img src={logo} alt="G1deon"/>
        </a>
    </div>

    <nav class="w-100 px-10">
        <Nav/>
    </nav>
</header>

<style>
    header {
        display: flex;
        align-items: center;
        position: fixed;
        width: 100%;
        background-color: var(--color-bg-0);
        height: 5rem;
    }

    .corner {
        margin: 0.5rem;
        width: 4rem;
        height: 4rem;
    }

    .corner a {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 100%;
        height: 100%;
    }

    .corner img {
        width: 3rem;
        height: 3rem;
        object-fit: contain;
    }
</style>
