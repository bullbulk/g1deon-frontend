<script>
    import TracksList from "./TracksList.svelte";
</script>

<svelte:head>
    <title>История треков</title>
    <meta name="description" content="История треков"/>
</svelte:head>

<section>
    <TracksList />
</section>

<style lang="scss">
  section {
    display: flex;
    flex-direction: column;
    justify-content: left;
    flex-grow: 0.6;
  }
</style>
