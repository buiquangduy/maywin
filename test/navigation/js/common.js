$(document).ready(function() {

  if(mmUa.Tablet || mmUa.Mobile){
    /* 繝｡繧ｬ繝｡繝九Η繝ｼ */
    megaMenue();
  }

  /* 繧ｹ繝�繝ｼ繧ｹ繧ｹ繧ｯ繝ｭ繝ｼ繝ｫ */
  smoothScroll();

  /* 繧｢繧ｳ繝ｼ繝�ぅ繧ｪ繝ｳ */
  accordion();

  /* 繧ｹ繝ｩ繧､繝峨Γ繝九Η繝ｼ */
  var slideMenu = new SlideMenu();
  slideMenu.init();

  //繝舌リ繝ｼ蛻�ｊ譖ｿ縺�
  bannerSwitch();

});

//繝ｦ繝ｼ繧ｶ繝ｼ繧ｨ繝ｼ繧ｸ繧ｧ繝ｳ繝亥愛蛻･
var mmUa = (function(u){
  return{
    Tablet:
    (/Windows/i.test(u) && /Touch/i.test(u)) ||
    /iPad/i.test(u) ||
    (/Android/i.test(u) && !/Mobile/i.test(u)) ||
    (/Firefox/i.test(u) && /Tablet/i.test(u)) ||
    /Kindle/i.test(u) ||
    /Silk/i.test(u) ||
    /Playbook/i.test(u),
    Mobile:
    (/Windows/i.test(u) && /Phone/i.test(u)) ||
    /iPhone/i.test(u) ||
    /iPod/i.test(u) ||
    (/Android/i.test(u) && /Mobile/i.test(u)) ||
    (/Firefox/i.test(u) && /Mobile/i.test(u)) ||
    /BlackBerry/i.test(u)
  };

})(window.navigator.userAgent);

//繝｡繧ｬ繝｡繝九Η繝ｼ
//繧ｰ繝ｭ繝ｼ繝舌Ν繝｡繝九Η繝ｼ
var megaMenue = function(){
  var gNav = $('.globalNavi');
  var gNavLi = $('.globalNavi.-inner').find('p.active');
  var sNav = $('.globalNavi.-inner').find('.subNavi');
  var prmMenue = $('.primaryMenu');
  var prmLng = prmMenue.find('li').eq(2);
  var lngNav = $('.languageNavi');
  var navIndex = 0;
  var actMenueNum = 0;
  var menueFlg = false;
  var animateFlg = false;
  var speed = 400;
  var menuHeight = '';
  var lungFlg = false;

  sNav.find('a').on('touchstart', function(event){
    event.stopPropagation();
  });

  gNavLi.on('touchstart', function(event){
    event.preventDefault();
    navIndex = gNavLi.index(this);
    lungFlg = false;
    if(!animateFlg){
      if(navIndex == actMenueNum && menueFlg){
        sNav.find('.subNaviCont').css({'opacity' : '0'});
        sNav.eq(navIndex).animate({'height' : '0px'}, speed, function(){
          menueFlg = false;
          animateFlg = false;
        });
        return false;
      }
      animateFlg = true;
      sNav.css({'height' : '0px'});
      sNav.find('.subNaviCont').css({'opacity' : '0'});
      sNav.find('.subNaviCont').eq(navIndex).css({'opacity' : '1'});
      if(sNav.eq(navIndex).hasClass('-corporate')){
        menuHeight = '370px';
      }else if(sNav.eq(navIndex).hasClass('-business')){
        menuHeight = '300px';
      }else if(sNav.eq(navIndex).hasClass('-global')){
        menuHeight = '175px';
      }else if(sNav.eq(navIndex).hasClass('-csr')){
        menuHeight = '250px';
      }else if(sNav.eq(navIndex).hasClass('-ir')){
        menuHeight = '250px';
      }
      sNav.eq(navIndex).animate({'height' : menuHeight}, speed, function(){
        menueFlg = true;
        actMenueNum = navIndex;
        animateFlg = false;
      });
    }else{
      return false;
    }
  });

  $(document).on('touchstart', function(event){
    if (!$.contains(gNav[0], event.target)){
      sNav.animate({'height' : '0px'}, speed, function(){
        animateFlg = false;
        menueFlg = false;
      });
    }
  });

  //險隱樣∈謚�
  prmLng.on('touchstart', function(event){
    menueFlg = false;
    if(!lungFlg){
      sNav.animate({'height' : '0px'}, speed);
      lngNav.animate({'height' : '113px'}, speed);
      lungFlg = true;
    }else{
      sNav.animate({'height' : '0px'}, speed);
      lngNav.animate({'height' : '0px'}, speed);
      lungFlg = false;
    }
    event.stopPropagation();
  });

  $(document).on('touchstart', function(event){
    if (!$.contains(prmLng, event.target)){
      lngNav.animate({'height' : '0px'}, speed);
      lungFlg = false;
    }
  });

};


//繧ｹ繝�繝ｼ繧ｹ繧ｹ繧ｯ繝ｭ繝ｼ繝ｫ
var smoothScroll = function(){
  var scroll = $('a.scroll');
  var _touch = ('ontouchstart' in document) ? 'touchstart' : 'click';

  scroll.on('click', function(event){
    event.preventDefault();
    var speed = 600;
    var windowWidth = $(window).width();

    var href= $(this).attr("href");
    var target = $(href == "#" || href == "" ? 'html' : href);
    var position = target.offset().top;
    if(windowWidth<769){
      var headerBlock = $('.-sp-content .headerInner').outerHeight();
      position -= headerBlock;
    }
    $("html, body").animate({scrollTop:position}, speed, "swing");
    return false;
  });
};

//繧｢繧ｳ繝ｼ繝�ぅ繧ｪ繝ｳ
var accordion = function(){
  var acdTitle = $(".accordion-title");
  var acdInner = $(".accordion-inner");
  var acdClose = $(".accordion-close");
  var acdOpen = '-open';
  var acdOther = '-other';
  var acdException = '-exception';
  var acdLen = acdTitle.length;
  var index = 0;
  var acdPos = 0;
  var speed = 400;
  var orientationchangeFlg = false;
  var windowWidth = 0;
  var actHeight = 0;
  var _touch = ('ontouchstart' in document) ? 'touchstart' : 'click';

  acdTitle.on('click', function(event){
    event.preventDefault();
    index = acdTitle.index(this);
    actHeight = acdInner.eq(index).height();
    if(!$(this).hasClass(acdOpen) && !acdInner.eq(index).is(':animated')){
      acdPos = $(window).scrollTop();
      $(this).addClass(acdOpen);
      acdInner.eq(index).css({'min-Height':'0px', 'height':actHeight}).slideDown(speed);
    }else{
      $(this).removeClass(acdOpen);
      acdInner.eq(index).slideUp(speed);
    }
  });
  acdClose.on('click', 'p', function(event){
    event.preventDefault();
    if(acdTitle.eq(index).hasClass(acdOther)){
      acdTitle.eq(index).removeClass(acdOpen);
      $("html,body").animate({scrollTop:acdPos}, speed);
      acdInner.eq(index).slideUp(speed);
    }else{
      acdTitle.eq(index).removeClass(acdOpen);
      acdInner.eq(index).slideUp(speed);
    }
  });

  $(window).on("orientationchange", function(){
    orientationchangeFlg = true;
  });
  $(window).on("resize", function(){
    //逶ｴ蜑阪↓orientationchange繧､繝吶Φ繝医′逋ｺ逕溘＠縺ｦ縺�◆蝣ｴ蜷医�縺ｿ蜃ｦ逅�ｒ陦後≧
    if(orientationchangeFlg){
      windowWidth = $(window).width();
      if(windowWidth>768){
        for(i=0;i<acdLen;i++){
          if(acdTitle.eq(i).hasClass(acdException)){
            acdTitle.eq(i).addClass(acdOpen);
            acdInner.eq(i).show();
          }
        }
      }
      orientationchangeFlg = false;
    }

    // 繝ｪ繧ｵ繧､繧ｺ譎ゅ↓險ｭ螳壹＠縺殞in-Height,height縺ｯ蜑企勁
    acdInner.css({'min-Height':'', 'height':''});

  });
  windowWidth = $(window).width();
  acdInner.hide();
  if(windowWidth>768){
    for(i=0;i<acdLen;i++){
      if(acdTitle.eq(i).hasClass(acdException)){
        acdTitle.eq(i).addClass(acdOpen);
        acdInner.eq(i).show();
      }
    }
  }
};

//繧ｹ繝ｩ繧､繝峨Γ繝九Η繝ｼ
var SlideMenu = function(){
  this.$wrapper = $(".contentWrap");
  this.$menuBtn = $(".spMenu").find(".menu-trigger");
  this.$slideMenu = $(".-sp-content .headerGlobalNavi");
  this.$yearSlideMenu = $(".-sp-content .sub-slide-inner");
  this.$menuInner = $(".-sp-content .headerGlobalNavi");
  this.$closeBtn = $(".spMenu").find(".menu-trigger");
  this.$innerCloseBtn = this.$slideMenu.find(".closeBtn.-sp-content");
  this.$contents = $(".contentWrap");
  this.$headerInner = $(".-sp-content .headerInner");
  this.$paginationBtn = $(".-sp-content").find(".sub-menu-trigger");
  this.$yearCloseBtn = $(".-sp-content .closeBtn");
  this.$paginationInner = $(".sub-slide-inner");
  this.$globalNavi = this.$slideMenu.find(".globalNavi");
  this.$globalNaviLink = this.$slideMenu.find(".globalNavi>li").find("a");
  this.$subNavi = this.$globalNavi.find(".subNavi");
  this.$searchBtn = $(".-sp-content").find(".search-trigger");
  this.$searchMenu = $(".spSearchForm");
  this.data = {
    w: 0,
    duration: 300,
    easing: "linear",
    flg: false,
    minMenuH: this.$slideMenu.outerHeight(true),
    isOpen: false,
    yearOpen: false,
    subNaviIndex: null,
    actSubNavIndex: null,
    moveSpeed: 500,
    menuAnimateFlg: false,
    searchOpen: false
  };
};

SlideMenu.prototype = {
  init: function() {
    var self = this;
    self.data.minMenuH =  500;

    self.addEvent();
  },
  addEvent: function() {
    var self = this;

    self.$menuBtn.click(function(e){
      e.preventDefault();

      if(!self.data.flg && self.data.searchOpen) {
        self.searchCloseMenu();
      }else if(!self.data.flg && !self.data.isOpen){
        self.openMenu();
      }
    });

    self.$closeBtn.click(function(e){
      e.preventDefault();

      if(!self.data.flg && self.data.isOpen){
        self.closeMenu();
      }
    });

    self.$paginationBtn.click(function(e){
      e.preventDefault();

      if(!self.data.flg && self.data.searchOpen) {
        self.searchCloseYear();
      } else if(!self.data.flg && !self.data.yearOpen){
        self.yearOpenMenu();
      }
    });

    self.$yearCloseBtn.click(function(e){
      e.preventDefault();

      if(!self.data.flg && self.data.yearOpen){
        self.yearCloseMenu();
      }
    });

    self.$innerCloseBtn.click(function(e){
      e.preventDefault();

      if(!self.data.flg && self.data.isOpen){
        self.closeMenu();
      }
    });

    self.$searchBtn.click(function(e){
      e.preventDefault();

      if(!self.data.flg && self.data.isOpen){
        self.changeSearch();
      } else if(!self.data.flg && self.data.yearOpen) {
        self.changeSearch();
      } else if(!self.data.flg && self.data.searchOpen) {
        self.searchClose();
      } else {
        self.searchOpen();
      }
    });

    self.$subNavi.prev("a").click(function(e){
      e.preventDefault();

      if(!self.data.menuAnimateFlg){
        self.data.menuAnimateFlg = true;
        self.data.subNaviIndex = self.$subNavi.prev("a").index(this);

        self.accordionMenu();
      }
    });

  },
  openMenu: function() {
    var self = this;

    self.data.flg = true;
    self.data.isOpen = true;
    self.data.yearOpen = false;
    self.$slideMenu.css({"display": "block"});
    self.data.w = $(window).width() * 0.8;
    self.$contents.animate({
      left: "-260px"
    }, {
      "duration": self.data.duration,
      "easing": self.data.easing,
      "complete": function(){
        self.data.flg = false;
      },
      "progress": function(anim, progress, fx){
        if(self.$contents.offset().left < 0){
          self.$paginationInner.css({"display": "none"});
        }
      }
    });
    self.$menuBtn.addClass('active');
    self.$paginationBtn.removeClass('active');
  },
  closeMenu: function() {
    var self = this;

    self.data.flg = true;
    self.$contents.animate({
      left: "0px"
    }, {
      "duration": self.data.duration,
      "easing": self.data.easing,
      "complete": function(){
        self.data.flg = false;
        self.data.isOpen = false;
        self.$slideMenu.css({"display": "none"});
      }
    });
    self.$menuBtn.removeClass('active');
  },
  yearOpenMenu: function() {
    var self = this;

    self.data.flg = true;
    self.data.yearOpen = true;
    self.data.isOpen = false;
    self.$yearSlideMenu.css({"display": "block"});
    self.data.w = $(window).width() * 0.8;
    self.$contents.animate({
      left: "260px"
    }, {
      "duration": self.data.duration,
      "easing": self.data.easing,
      "complete": function(){
        self.data.flg = false;
      },
      "progress": function(anim, progress, fx){
        if(self.$contents.offset().left > 0){
          self.$menuInner.css({"display": "none"});
        }
      }
    });
    self.$menuBtn.removeClass('active');
    self.$paginationBtn.addClass('active');
  },
  yearCloseMenu: function() {
    var self = this;

    self.data.flg = true;
    self.$contents.animate({
      left: "0px"
    }, {
      "duration": self.data.duration,
      "easing": self.data.easing,
      "complete": function(){
        self.data.flg = false;
        self.data.yearOpen = false;
        self.$yearSlideMenu.css({"display": "none"});
      }
    });
    self.$paginationBtn.removeClass('active');
  },
  accordionMenu: function() {
    var self = this;

    self.$globalNaviLink.removeClass("-open");

    if(self.data.actSubNavIndex == self.data.subNaviIndex){
      self.$subNavi.slideUp(self.data.moveSpeed, function(){
        self.data.actSubNavIndex = null;
        self.data.menuAnimateFlg = false;
      });
    }else{
      self.$subNavi.not(self.$subNavi.eq(self.data.subNaviIndex)).slideUp(self.data.moveSpeed);
      self.$subNavi.prev("a").eq(self.data.subNaviIndex).addClass("-open");
      self.$subNavi.eq(self.data.subNaviIndex).slideDown(self.data.moveSpeed, function(){
        self.data.actSubNavIndex = self.data.subNaviIndex;
        self.data.menuAnimateFlg = false;
      });
    }

  },
  searchOpen: function() {
    var self = this;

    self.$searchMenu.slideDown(300,function(){
      self.data.searchOpen = true;
    });
  },
  searchClose: function() {
    var self = this;

    self.$searchMenu.slideUp(300,function(){
      self.data.searchOpen = false;
    });
  },
  changeSearch: function() {
    var self = this;

    self.data.flg = true;
    self.$contents.animate({
      left: "0px"
    }, {
      "duration": self.data.duration,
      "easing": self.data.easing,
      "complete": function(){
        self.data.flg = false;
        self.data.isOpen = false;
        self.data.yearOpen = false;
        self.$slideMenu.css({"display": "none"});
        self.$searchMenu.slideDown(300,function(){
          self.data.searchOpen = true;
        });
      }
    });
    self.$menuBtn.removeClass('active');
    self.$paginationBtn.removeClass('active');
  },
  searchCloseMenu: function() {
    var self = this;

    self.$searchMenu.slideUp(300,function(){
      self.data.searchOpen = false;
      self.data.flg = true;
      self.data.isOpen = true;
      self.$slideMenu.css({"display": "block"});
      self.data.w = $(window).width() * 0.8;
      self.$contents.animate({
        left: "-260px"
      }, {
        "duration": self.data.duration,
        "easing": self.data.easing,
        "complete": function(){
          self.data.flg = false;
        },
        "progress": function(anim, progress, fx){
          if(self.$contents.offset().left < 0){
            self.$paginationInner.css({"display": "none"});
          }
        }
      });
      self.$menuBtn.addClass('active');
    });
  },
  searchCloseYear: function() {
    var self = this;

    self.$searchMenu.slideUp(300,function(){
      self.data.searchOpen = false;
      self.data.flg = true;
      self.data.yearOpen = true;
      self.data.isOpen = false;
      self.$yearSlideMenu.css({"display": "block"});
      self.data.w = $(window).width() * 0.8;
      self.$contents.animate({
        left: "260px"
      }, {
        "duration": self.data.duration,
        "easing": self.data.easing,
        "complete": function(){
          self.data.flg = false;
        },
        "progress": function(anim, progress, fx){
          if(self.$contents.offset().left > 0){
            self.$menuInner.css({"display": "none"});
          }
        }
      });
      self.$menuBtn.removeClass('active');
      self.$paginationBtn.addClass('active');
    });
  }
};

//繝舌リ繝ｼ蛻�ｊ譖ｿ縺�
var bannerSwitch = function(){

  if(!mmUa.Tablet && !mmUa.Mobile){

    var $li = $('.contInner > ul > li');
    var $banner = $('.gnaviBanner');
    var lockFlg = false;
    var lockDuration = 1000; // 繝舌リ繝ｼ繧偵Ο繝�け縺励※縺�ｋ譎る俣
    var lockTimer = null;
    var lockLiIndex = undefined;
    var offset = 5;
    var lockUlIndex = undefined;
    var $hoverArea = $('.subNavi.-business').parent();
    var defaultClass = 'default';
    var enterTime = undefined;
    var changedFlg = false;
    var mouseOnDuration = 500; // li隕∫ｴ�縺ｫ荵励○縺溘∪縺ｾ縺ｮ譎ゅ［ouseOnDuration縲邨碁℃縺励◆繧峨∽ｹ励○縺ｦ縺�ｋ隕∫ｴ�縺ｫ繝舌リ繝ｼ縺悟�繧頑崛繧上ｋ
    var mouseOnTimer = null;
    var bannerClass = '';
    var defaultBannerTimer = null;
    var defaultBannerChangeDuration = 2500; // 繝帙ヰ繝ｼ縺悟､悶ｌ縺ｦ縺九ｉ繝�ヵ繧ｩ繝ｫ繝医ヰ繝翫�縺ｫ謌ｻ繧九∪縺ｧ縺ｮ譎る俣

    $li.hover(
      function(){
        clearTimeout(defaultBannerTimer);
        var index = $(this).index();
        enterTime = (new Date()).getTime();
        // 繝ｪ繝ｳ繧ｯ縺敬ttp蟋九∪繧翫°
        if($(this).find('a').attr('href').indexOf("http") == -1){
          bannerClass = $(this).find('a').attr('href').split("/")[1];
        }else{
          bannerClass = $(this).find('a').attr('href').split("/")[3];
        }
        /*
         * 蛻�ｊ譖ｿ繧上ｋ譚｡莉ｶ
         * 繝ｻ繝ｭ繝�け縺輔ｌ縺ｦ縺�↑縺� or
         * 繝ｻ邵ｦ縺ｫ隕九※蜷後§繧ｰ繝ｫ繝ｼ繝励〒縺ｯ縺ｪ縺� or
         * 繝ｻ繝槭え繧ｹ繧ｪ繝ｼ繝舌�逡ｪ蜿ｷ縺後Ο繝�け逡ｪ蜿ｷ繧医ｊ繧ょｰ上＆縺�
         */
        if(!lockFlg || $(this).parent().index() !== lockUlIndex || index < lockLiIndex){
          $banner.find('ul.' + bannerClass).siblings().hide().end().show();
          changedFlg = true;
        }

        // li隕∫ｴ�縺ｫ荵励○縺溘∪縺ｾ縺ｮ譎ゅ�蛻�ｊ譖ｿ縺医ｋ縲�
        mouseOnTimer = setTimeout(function(){
          $banner.find('ul.' + bannerClass).siblings().hide().end().show();
          changedFlg = true;
        }, mouseOnDuration);
      },
      function(){
        clearTimeout(mouseOnTimer);
        /*
         * 繝ｭ繝�け縺ｮ譚｡莉ｶ
         * 繝ｻ繝舌リ繝ｼ蛻�ｊ譖ｿ縺医◆逶ｴ蠕�
         * 繝ｻ貊槫惠譎る俣縺檎洒縺��ｴ蜷� �医Ο繝�け繧偵°縺代↑縺翫☆縺溘ａ��
         */
        if(changedFlg || (new Date()).getTime() - enterTime <= lockDuration){
          var index = $(this).index();
          if(lockTimer){
            clearTimeout(lockTimer);
            lockTimer = null;
          }
          lockFlg = true;
          lockLiIndex = $(this).index();
          lockTimer = setTimeout(function(){
            lockFlg = false;
          }, lockDuration);
          lockUlIndex = $(this).parent().index();
        }
        changedFlg = false;

        defaultBannerTimer = setTimeout(function(){
          $banner.find('ul.' + defaultClass).siblings().hide().end().show();
        }, defaultBannerChangeDuration);
      }
    );

    // 繝舌リ繝ｼ繧ｨ繝ｪ繧｢縺ｫ縺�ｋ髢薙�繝�ヵ繧ｩ繝ｫ繝医�繝舌リ繝ｼ縺ｫ謌ｻ縺輔↑縺�
    $banner.find('img').hover(
      function(){
        clearTimeout(defaultBannerTimer);
      },
      function(){
        defaultBannerTimer = setTimeout(function(){
          $banner.find('ul.' + defaultClass).siblings().hide().end().show();
        }, defaultBannerChangeDuration);
      }
    );

    // 繝舌リ繝ｼ陦ｨ遉ｺ繧ｵ繝悶リ繝馴�伜沺縺九ｉ螟悶ｌ縺溘ｉ繝�ヵ繧ｩ繝ｫ繝医↓謌ｻ縺�
    $hoverArea.mouseleave(function(){
      $banner.find('ul.' + defaultClass).siblings().hide().end().show();
    });
  }
};