// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require('@rails/ujs').start();
require('turbolinks').start();
require('@rails/activestorage').start();
require('channels');
import '@popperjs/core';
import 'bootstrap';

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

$(document).on('turbolinks:load', function () {
  new FroalaEditor('#edit', {});
  new FroalaEditor('#blog_content', {});

  var menuItem = document.querySelector('.menu-item-tablet-mobile');
  var iconbar = document.querySelector('.icon-bar');
  var btnCloseMenuMobile = document.querySelector(
    '.img-close-item-menu-mobile'
  );
  var btn_search = document.querySelector('.btn-search');
  var icon_search = document.querySelector('#icon-search');
  var header_search = document.querySelector('.header-search-blog');
  var icon_search_tablet = document.querySelector('#icon-search-tablet');
  if (
    document.querySelector('.buttonMenu') !== undefined &&
    document.querySelector('.buttonMenu') !== null
  ) {
    var dropdownMenuItemButton = document.querySelector('.buttonMenu');
  }
  var dropdownMenuItemDiv = document.querySelector('.dropdownMenuItem');
  if (
    document.querySelector('#buttonMenuMobile') !== undefined &&
    document.querySelector('#buttonMenuMobile') !== null
  ) {
    var dropdownMenuItemButtonMobile =
      document.querySelector('#buttonMenuMobile');
  }
  var dropdownMenuItemDivMobile = document.querySelector(
    '#dropdownMenuItemMobile'
  );

  iconbar.addEventListener('click', function () {
    menuItem.classList.add('active');
  });
  btnCloseMenuMobile.addEventListener('click', function () {
    menuItem.classList.remove('active');
  });
  btn_search.addEventListener('click', function () {
    header_search.style.display = 'none';
  });
  icon_search.addEventListener('click', function () {
    header_search.style.display = 'block';
  });
  icon_search_tablet.addEventListener('click', function () {
    header_search.style.display = 'block';
    menuItem.classList.remove('active');
  });
  if (
    document.querySelector('.buttonMenu') !== undefined &&
    document.querySelector('.buttonMenu') !== null
  ) {
    dropdownMenuItemButton.addEventListener('click', function () {
      dropdownMenuItemDiv.classList.toggle('active');
    });
  }
  if (
    document.querySelector('#buttonMenuMobile') !== undefined &&
    document.querySelector('#buttonMenuMobile') !== null
  ) {
    dropdownMenuItemButtonMobile.addEventListener('click', function () {
      dropdownMenuItemDivMobile.classList.toggle('active');
    });
  }
});
