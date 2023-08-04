<script>
    import TracksList from "./TracksList.svelte";
</script>

<svelte:head>
    <title>G1deon</title>
    <meta name="description" content="G1deon website"/>
</svelte:head>

<section>
    <TracksList />
</section>

<style lang="scss">
  section {
    display: flex;
    flex-direction: column;
    justify-content: center;
    flex-grow: 0.6;
  }
</style>
