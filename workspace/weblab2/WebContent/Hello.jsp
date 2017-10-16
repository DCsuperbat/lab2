<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>search</title>
<style>
html {
  background-color:#fff;
  color:#32353a;
  font-family:Tahoma, Verdana, Segoe, sans-serif;
  line-height:1.5;
}

body {
  margin:0;
}

h1 {
  font-family:'American Typewriter', 'Rockwell Extra Bold', 'Book Antiqua', Georgia, serif;
  font-size:4em;
}

/**
* Components
*/
.counter {
  margin-bottom:1rem;
  border-bottom:.1875em dashed #d2d6dd;
}

.tagline {
  font-size:1.125em;
  margin:2rem 1.5rem;
}

.calories {
  color:#8b919b;
  font-size:.875em;
}

.splash {
  position: relative;
  height:100vh;
  max-width:30em;
  text-align:center;
}
/*11111111111111111111111111111111111111111111111111111111*/
.splash {
  box-sizing:border-box;
  max-width:30em;
  margin:0 auto;
  padding:1.5em;
}


/**
* Header animation
*/
.counter {
  position:relative;
  padding-top:30vh;
}

.counter h1 {
  position:relative;
  text-align:center;
  margin:0;
  line-height: .825;
  z-index:2;
  transform-origin: bottom center;
}

.dish {
  color:#e89c2b;
  position:absolute;
  width:1em;
  height:1em;
  margin-top:-.75em;
  margin-left:-.5em;
  font-size:2rem;
  top:0;
  transform:translateY(-3em);
  transition-duration:.75s;
  transition-timing-function:ease-in;
  transition-property:transform;
  z-index:1;
}

.dish.drop {
  transform:translateY(30vh);
}

.nommer {
  position:absolute;
  bottom:2em;
  margin-left:-1em;
  color:rgba(0,0,0,.5);
  font-size:1.5rem;
  transform-origin:bottom center;
}
</style>
</head>
<body bgcolor=#FFE6D9>
<script type="text/javascript" src="js/fitty.min.js"></script>

<div class="splash">

  <div class="counter">
    <div><h1>According to Author</h1></div>
  </div>

<p align="center"><input type="button" value="Search" onclick="window.location.href='searchbks.jsp'"/><br/></p>
</div>
<script type="text/javascript">
// let it rain
(function(){
  var counter = document.querySelector('.counter');
  var diner = document.querySelector('h1');
  var menu = ['*', '@', '%', '￥', '#', '^_^'];
  var noms = ['nom', 'nom!', 'nom!!', 'nommm', 'nommy'];
  var finished = 0;

  // animation to play when finished dining
  function jelly(e) {
    diner.removeEventListener('fit', jelly);
    diner.animate(
      [
        { transform: 'scale(' + 1 / e.detail.scaleFactor + ')' },
        { transform: 'scale(1.1)' },
        { transform: 'scale(.9)' },
        { transform: 'scale(1.05)' },
        { transform: 'scale(.98)' },
        { transform: 'scale(1)' }
      ],
      {
        duration:500
      }
    );
  }

  // eat animation
  function nom(index) {

    var nommer = document.getElementById('nommer-' + index);
    var rotation = -20 + (Math.random() * 40);
    var scale = .75 + (Math.random() * .5);

    nommer.animate(
      [
        { opacity:0, transform: 'scale(' + .25 * scale + ') rotateZ(' + rotation + 'deg) translateY(0) ' },
        { opacity:1, transform: 'scale(' + scale + ') rotateZ(' + rotation + 'deg) translateY(-.5em) ' }
      ],
      {
        duration:250
      }
    );

    diner.animate(
      [
        { transform: 'scaleY(1)' },
        { transform: 'scaleY(' + (.7 + (Math.random() * .2)) + ')' },
        { transform: 'scaleY(1)' }
      ],
      {
        duration:100
      }
    );
  }

  // only when animation api is supported
  if ('animate' in diner) {
    diner.addEventListener('fit', jelly);
  }

  // create food items
  var dishes = menu
  .concat(menu) // duplicate icons
  .sort(function() { return .5 - Math.random(); })
  .concat(['??']) // unfortunately there's no fly emoji
  .map(function(menuItem, i) {

    var offset = 33.33 + (Math.random() * 33.33);

    var dish = document.createElement('div');
    dish.textContent = menuItem;
    dish.setAttribute('aria-hidden', 'true');
    dish.setAttribute('data-nommer', i);
    dish.className = 'dish';
    dish.style.cssText = 'left:' + offset + '%; transition-delay: ' + ((i * 200) + Math.random() * 100) + 'ms';

    var nommer = document.createElement('div');
    nommer.id = 'nommer-' + i;
    nommer.textContent = noms[Math.floor(Math.random() * noms.length)];
    nommer.setAttribute('aria-hidden', 'true');
    nommer.className = 'nommer';
    nommer.style.cssText = 'left:' + offset + '%; opacity:0;';

    counter.appendChild(dish);
    counter.appendChild(nommer);

    return dish;
  });

  // animate into view
  setTimeout(function() {
    requestAnimationFrame(function() {
      dishes.forEach(function (dish) {
        dish.classList.add('drop');
        dish.addEventListener('transitionend', burb);
      })
    });
  }, 500);

  // burb after eating dish
  function burb(e) {
    e.target.removeEventListener('transitionend', burb);
    e.target.style.opacity = 0;

    finished++;
    if (finished === dishes.length) {
      full();
    }
    else if ('animate' in diner) {
      nom(e.target.getAttribute('data-nommer'));
    }
  }

  // so full!
  function full() {
    fitty(diner, {
      minSize:64
    });
  }
}());
</script>
</body>
</html>

