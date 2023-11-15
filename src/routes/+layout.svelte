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

    <main class="px-12 lg:px-36">
        <slot/>
    </main>
</div>

<Footer/>

<style lang="scss">
    .app {
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    main {
        flex: 1;
        display: flex;
        flex-direction: column;
        width: 100%;
        margin: 0 auto;
        box-sizing: border-box;
    }
</style>
