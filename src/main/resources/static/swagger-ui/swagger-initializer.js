window.onload = function () {
  const supported = [
    { label: "한국어 (ko-KR)", value: "ko-KR" },
    { label: "English (en-US)", value: "en-US" },
    { label: "日本語 (ja-JP)", value: "ja-JP" },
  ];

  const storageKey = "swagger_accept_language";
  const defaultLang = "ko-KR";

  function getLang() {
    return localStorage.getItem(storageKey) || defaultLang;
  }

  function setLang(v) {
    localStorage.setItem(storageKey, v);
  }

  // Swagger UI Topbar에 드롭다운을 끼워넣는 간단 플러그인
  const LanguageDropdownPlugin = function () {
    return {
      wrapComponents: {
        Topbar: (Original, system) => (props) => {
          const React = system.React;

          const current = getLang();

          const select = React.createElement(
            "select",
            {
              value: current,
              onChange: (e) => {
                setLang(e.target.value);
                // UI 즉시 반영용: 페이지 새로고침(가장 단순/확실)
                window.location.reload();
              },
              style: {
                marginLeft: "12px",
                padding: "4px 8px",
                borderRadius: "8px",
              },
              title: "Accept-Language",
            },
            supported.map((x) =>
              React.createElement("option", { key: x.value, value: x.value }, x.label)
            )
          );

          // Topbar 오른쪽에 붙이기
          const container = React.createElement(
            "div",
            { style: { display: "flex", alignItems: "center" } },
            React.createElement(Original, props),
            select
          );

          return container;
        },
      },
    };
  };

  window.ui = SwaggerUIBundle({
    url: "/v3/api-docs",
    dom_id: "#swagger-ui",
    deepLinking: true,
    presets: [SwaggerUIBundle.presets.apis, SwaggerUIStandalonePreset],
    plugins: [SwaggerUIBundle.plugins.DownloadUrl, LanguageDropdownPlugin],
    layout: "StandaloneLayout",

    // 모든 요청에 Accept-Language 자동 주입
    requestInterceptor: (req) => {
      req.headers = req.headers || {};
      req.headers["Accept-Language"] = getLang();
      return req;
    },
  });
};