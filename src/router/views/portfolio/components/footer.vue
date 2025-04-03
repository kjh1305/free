<script>
export default {
  name: "footer",
  data() {
    return {
      currentYear: new Date().getFullYear(),
    };
  },
}
</script>

<template>
  <footer class="footer">
    <div class="footer-container">
      <div class="footer-section left-section">
        <p class="thank-you">Thank you</p>
      </div>
      <div class="footer-section center-section">
        <p class="message">봐주셔서 감사합니다.</p>
        <p class="description">
          백엔드 개발자로서 성장하기 위해 꾸준히 학습하고 새로운 기술을 익히며,
          실무 경험을 통해 더욱 발전된 개발자가 되겠습니다.
        </p>
      </div>
      <div class="footer-section right-section">
        <div class="links">
          <a href="https://your-blog-link.com" target="_blank" class="link">
            <i class="fas fa-blog"></i> 블로그
          </a>
          <a href="https://github.com/your-github-username" target="_blank" class="link">
            <i class="fab fa-github"></i> 깃허브
          </a>
        </div>
        <div class="copyright">
          © {{ currentYear }} Your Name. All rights reserved.
        </div>
      </div>
    </div>
  </footer>
</template>

<style scoped lang="scss">
.footer {
  background-color: #f8f9fa; /* 배경색 (두 번째 포트폴리오와 유사하게 변경) */
  padding: 50px 0; /* padding 조정 */
  text-align: center;
  font-family: sans-serif; /* 폰트 스타일 (두 번째 포트폴리오와 유사하게 변경) */
}

/* 푸터 컨테이너 */
.footer-container {
  display: flex;
  justify-content: space-between; /* 영역을 좌우로 분할 */
  align-items: center;
  max-width: 1200px; /* 최대 너비 설정 */
  margin: 0 auto; /* 가운데 정렬 */
  padding: 0 20px; /* 좌우 padding */
}

/* 푸터 섹션 */
.footer-section {
  flex: 1; /* 각 영역이 동일한 비율로 공간을 차지 */
  text-align: left; /* 텍스트 왼쪽 정렬 */
}

/* 왼쪽 섹션 */
.left-section {
  text-align: left;
}

/* 가운데 섹션 */
.center-section {
  text-align: center;
}

/* 오른쪽 섹션 */
.right-section {
  text-align: right;
}

/* Thank You 메시지 */
.thank-you {
  font-size: 24px;
  font-weight: bold;
  color: #343a40; /* 글자색 (두 번째 포트폴리오와 유사하게 변경) */
}

/* 메시지 */
.message {
  font-size: 18px;
  color: #6c757d; /* 글자색 (두 번째 포트폴리오와 유사하게 변경) */
  margin-bottom: 10px;
}

/* 설명 */
.description {
  font-size: 14px;
  color: #6c757d; /* 글자색 (두 번째 포트폴리오와 유사하게 변경) */
}

/* 링크 */
.links {
  margin-bottom: 20px;
}

.link {
  display: inline-block;
  margin: 0 10px;
  color: #007bff;
  text-decoration: none;
  font-size: 16px;
  transition: color 0.3s ease;
}

.link:hover {
  color: #0056b3;
}

/* Copyright */
.copyright {
  font-size: 12px;
  color: #6c757d;
}

/* 반응형 디자인 */
@media (max-width: 768px) {
  .footer-container {
    flex-direction: column; /* 모바일에서는 세로로 배치 */
    text-align: center; /* 텍스트 가운데 정렬 */
  }

  .footer-section {
    text-align: center; /* 텍스트 가운데 정렬 */
    margin-bottom: 20px; /* 섹션 간 간격 추가 */
  }

  .left-section,
  .center-section,
  .right-section {
    text-align: center; /* 텍스트 가운데 정렬 */
  }

  .thank-you {
    font-size: 20px; /* 폰트 크기 줄임 */
  }

  .message {
    font-size: 16px; /* 폰트 크기 줄임 */
  }

  .description {
    font-size: 12px; /* 폰트 크기 줄임 */
  }
}
</style>