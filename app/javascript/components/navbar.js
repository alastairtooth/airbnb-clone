const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('#home-navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      console.log(window.scrollY)
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lewagon-white');
      } else {
        navbar.classList.remove('navbar-lewagon-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
