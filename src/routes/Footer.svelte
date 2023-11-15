<script>
    import Nav from "$lib/components/Nav.svelte";
</script>

<footer class="p-4 md:px-24">
    <div class="flex flex-col justify-center items-center">
        <address>
            <div class="made-by">
                <p>By <a class="text" href="https://github.com/bullbulk">bullbulk</a></p>
            </div>
            <div class="contact">
                <p><a class="text" href="mailto:admin@bullbulk.ru">Contact admin</a></p>
            </div>
        </address>
    </div>
</footer>

<style lang="scss">
  footer a {
    font-weight: bold;
  }

  .made-by {
    font-weight: bold;
  }

  address {
    @apply mt-20 not-italic flex flex-col justify-center items-center;

    & .contact * {
      @apply mt-2 text-[--color-separator] text-xs;
    }
  }
</style>
