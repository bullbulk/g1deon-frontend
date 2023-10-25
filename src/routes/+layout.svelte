<script>
    import '$lib/css/app.scss';
    import '$lib/css/fonts.scss';

    import Footer from "./Footer.svelte";
    import Header from './Header.svelte';
</script>

<svelte:head>
    <title>G1deon</title>
    <meta content="G1deon" name="description"/>
</svelte:head>

<div class="app">
    <Header/>

    <main>
        <slot/>
    </main>
</div>

<Footer/>

<style>
    .app {
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    main {
        flex: 1;
        display: flex;
        flex-direction: column;
        padding: 1rem;
        width: 100%;
        max-width: 64rem;
        margin: 0 auto;
        box-sizing: border-box;
    }
</style>
