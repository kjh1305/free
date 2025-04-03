<script>
export default {
  name: "header",
  data() {
    return {
      isMenuOpen: false,
    };
  },
  methods: {
    toggleMenu() {
      this.isMenuOpen = !this.isMenuOpen;
    },
    closeMenu() {
      this.isMenuOpen = false;
    },
  },
}
</script>

<template>
  <header class="header">
    <div class="header-container">
      <div class="logo">
        <a href="#">Your Name</a>  <!-- 로고 텍스트 변경 -->
      </div>
      <nav class="nav">
        <ul class="nav-list">
          <li><a href="#home">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#skills">Skills</a></li>
          <li><a href="#projects">Projects</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav>
      <button class="hamburger-button" @click="toggleMenu">
        <i class="fas fa-bars"></i>
      </button>
      <div class="mobile-menu" :class="{ 'open': isMenuOpen }">
        <ul class="mobile-nav-list">
          <li><a href="#home" @click="closeMenu">Home</a></li>
          <li><a href="#about" @click="closeMenu">About</a></li>
          <li><a href="#skills" @click="closeMenu">Skills</a></li>
          <li><a href="#projects" @click="closeMenu">Projects</a></li>
          <li><a href="#contact" @click="closeMenu">Contact</a></li>
        </ul>
      </div>
    </div>
  </header>
</template>

<style scoped lang="scss">
.header {
  background-color: #fff; /* 배경색 (원하는 색상으로 변경) */
  padding: 20px 0;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
  position: fixed; /* 상단 고정 */
  top: 0;
  left: 0;
  width: 100%;
  z-index: 100; /* 다른 요소 위에 표시 */
}

/* Header 컨테이너 */
.header-container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

/* 로고 */
.logo {
  font-size: 24px;
  font-weight: bold;
  color: #333; /* 로고 색상 (원하는 색상으로 변경) */
}

.logo a {
  text-decoration: none;
  color: inherit;
}

/* 네비게이션 */
.nav {
  display: flex;
}

.nav-list {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
}

.nav-list li {
  margin-left: 20px;
}

.nav-list li:first-child {
  margin-left: 0;
}

.nav-list li a {
  text-decoration: none;
  color: #555; /* 메뉴 링크 색상 (원하는 색상으로 변경) */
  font-size: 16px;
  transition: color 0.3s ease;
}

.nav-list li a:hover {
  color: #007bff; /* hover 시 메뉴 링크 색상 변경 (원하는 색상으로 변경) */
}

/* 햄버거 버튼 */
.hamburger-button {
  display: none;
  background: none;
  border: none;
  font-size: 24px;
  color: #333;
  cursor: pointer;
}

/* 모바일 메뉴 */
.mobile-menu {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100vh;
  background-color: rgba(0, 0, 0, 0.8);
  display: flex;
  justify-content: center;
  align-items: center;
  visibility: hidden;
  opacity: 0;
  transition: visibility 0s, opacity 0.3s ease;
}

.mobile-menu.open {
  visibility: visible;
  opacity: 1;
}

.mobile-nav-list {
  list-style: none;
  margin: 0;
  padding: 0;
  text-align: center;
}

.mobile-nav-list li {
  margin-bottom: 20px;
}

.mobile-nav-list li a {
  color: #fff;
  text-decoration: none;
  font-size: 24px;
}

/* 반응형 스타일 */
@media (max-width: 768px) {
  .nav {
    display: none;
  }

  .hamburger-button {
    display: block;
  }
}
</style>