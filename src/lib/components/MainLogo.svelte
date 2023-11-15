<script>
    import logo from "$lib/images/g1deon-logo.svg";

    import {spring} from 'svelte/motion';

    let isAnimating = false;
    export let rotation = 720;
    export let timing = 1000;

    let springyRotation = spring(720, {
        stiffness: 0.1,
    });

    $: style = `
		display: inline-block;
		transform: rotate(${$springyRotation}deg)
	`;

    $: springyRotation.set(isAnimating ? rotation : 0);

    $: if (isAnimating) {
        window.setTimeout(() => {
            isAnimating = false
        }, timing);
    }

    function triggerAnimation() {
        isAnimating = true;
    }
</script>

<div class="corner main-logo" on:mouseenter={triggerAnimation} role="link" style={style} tabindex="0">
    <a href="/">
        <img alt="G1deon" src={logo}/>
    </a>
</div>


<style lang="scss">
  .corner {
    margin: 0.5rem;
    width: 4rem;
    height: 4rem;

    & a {
      display: flex;
      align-items: center;
      justify-content: center;
      width: 100%;
      height: 100%;
    }

    & img {
      width: 3rem;
      height: 3rem;
      object-fit: contain;
    }
  }
</style>
