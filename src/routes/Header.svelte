<script>
    import logo from '$lib/images/g1deon-logo.svg';
</script>

<header>
    <div class="corner">
        <a href="https://trovo.live/s/G1deonTV" target="_blank">
            <img src={logo} alt="G1deon"/>
        </a>
    </div>
</header>

<style>
    header {
        display: flex;
        justify-content: space-between;
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
