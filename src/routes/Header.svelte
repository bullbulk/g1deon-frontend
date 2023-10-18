<script>
    import logo from '$lib/images/g1deon-logo.svg';
</script>

<header>
    <div class="corner">
        <a href="https://trovo.live/s/G1deonTV" target="_blank">
            <img src={logo} alt="G1deon"/>
        </a>
    </div>

    <nav class="w-100">
        <ul class="flex gap-10 px-10">
            <li><a href="/">Главная</a></li>
            <li><a href="/tracks">История треков</a></li>
            <li><a href="/mana">Топ по мане</a></li>
            <li><a href="/rating">Рейтинг</a></li>
        </ul>
    </nav>
</header>

<style>
    header {
        display: flex;
        align-items: center;
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
