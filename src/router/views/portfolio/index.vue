<script>
import Header from './components/header.vue';
import Hero from './components/hero.vue';
import About from './components/about.vue';
import Skills from './components/skills.vue';
import Experience from './components/experience.vue';
import Education from './components/education.vue';
import Projects from './components/projects.vue';
import Contact from './components/contact.vue';
import Footer from './components/footer.vue';
import FloatingButtons from './components/floatingButtons.vue';

export default {
  name: "index",
  components: {
    Header,
    Hero,
    About,
    Skills,
    Experience,
    Education,
    Projects,
    Contact,
    Footer,
    FloatingButtons,
  }
}
</script>

<template>
  <div>
    <Header />
    <transition
        enter-active-class="animate__animated animate__fadeIn"
        leave-active-class="animate__animated animate__fadeOut"
    >
      <Hero />
    </transition>
    <transition
        enter-active-class="animate__animated animate__fadeIn"
        leave-active-class="animate__animated animate__fadeOut"
    >
      <About />
    </transition>
    <transition name="fade">
      <Skills />
    </transition>
    <transition name="fade">
      <Experience />
    </transition>
    <transition name="fade">
      <Education />
    </transition>
    <transition name="fade">
      <Projects />
    </transition>
    <transition name="fade">
      <Contact />
    </transition>
    <Footer />
    <FloatingButtons />
  </div>
</template>

<style scoped lang="scss">
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.5s ease;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style>