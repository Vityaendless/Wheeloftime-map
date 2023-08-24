
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" >

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link type="image/x-icon" href="img/favicon.ico" rel="shortcut icon">

<link rel="stylesheet" type="text/css" href="css/styles.css">

<title>{{ $title }}</title>
</head>
<body>
<script type="text/x-template" id="modal-template">
    <div class="modal-mask">
      <div class="modal-wrapper">
        <div class="modal-container">
          <div class="modal-header">
            <slot name="header">
              default header
            </slot>
          </div>
          <div class="modal-body">
            <slot name="image">
              default body
            </slot>
            <slot name="desc">
              default body
            </slot>
          </div>
          <div class="modal-footer">
            <slot name="footer">
              <button class="modal-default-button" @click="$emit('close')">
                OK
              </button>
            </slot>
          </div>
        </div>
      </div>
    </div>
</script>
<div class="main_on_page" id="app" @scroll="onScroll">
    <h1>@{{ title }}</h1>
    <br>
    <p v-html=pre></p>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <form class="cross_info alert alert-info alert-dismissible prov"
                      method="POST" 
                      action=""  
                      enctype="multipart/form-data"
                      >
                @csrf
                    <p>Add mark:</p>
                    <br>
                    <input id="name-event" 
                           name="name-event" 
                           class="form-control-plaintext name-event"
                           v-model="text_in_input" 
                           :maxlength="limit_in_input" 
                           readonly
                           required
                           >
                    <p>
                    Characters left: @{{ count_limit_in_input }}
                    </p>
                    <input type="file" 
                           id="img-event" 
                           name="img-event" 
                           class="form-control-plaintext img-event" accept=".jpg,.jpeg,.png" 
                           disabled
                           required
                           >
                    <textarea id="info_text" 
                              class="info_text form-control" 
                              name="textarea" 
                              v-model="text_in_textarea" 
                              :maxlength="limit_in_textarea" readonly
                              required
                              >
                              </textarea>
                    <p>
                    Characters left: @{{ count_limit_in_textarea }}</p>
                    <input id="button" 
                           class="btn btn-warning btn-sm" 
                           id="button" 
                           type="submit" 
                           value="ADD" 
                           disabled 
                           >
                    <p>Coordinates:</p>
                    <input class="coords"
                           id="cx" 
                           name="xclick" 
                           value="X" 
                           readonly
                           >
                    <input class="coords" 
                           id="cy" 
                           name="yclick" 
                           value="Y" 
                           readonly
                           >
                </form>
         </div>
        {{ $slot }}
      </div>
   </div>
   <br>
   <p>@{{ footer_sign }}</p>
   <div id="swordTop" v-if="sword_visibility">
      <img src="img/sword.png" v-on:click="toTop">
   </div>
</div>
</body>
<script src="https://unpkg.com/vue@next"></script>
<script src="js/app.js"></script>
<script type="text/javascript" src="js/main_script.js" ></script>
</html>