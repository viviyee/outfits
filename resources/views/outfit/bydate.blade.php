<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        td {
            padding: 10px 20px;
        }
        .Monday {
            margin-top: 40px;
        }
    </style>
  </head>
  <body>

    <div class="container">
        <div class="row">
            <div class="col col-md-1">ID</div>
            <div class="col col-md-1">Date</div>
            <div class="col col-md-1">Day</div>
            <div class="col col-md-3">Upper</div>
            <div class="col col-md-3">Lower</div>
        </div>

        @foreach ($outfits as $outfit)
        <div class="row {{$outfit->day}}">
            <div class="col col-md-1">{{ $outfit->id }}</div>
            <div class="col col-md-1">{{ $outfit->date }}</div>
            <div class="col col-md-1">{{ $outfit->day }}</div>
            <div class="col col-md-3" style="background-color: {{$outfit->upper->color}}; color: {{$outfit->upper->font_color}};">
                {{ $outfit->upper->name }}
            </div>
            <div class="col col-md-3" style="background-color: {{$outfit->lower->color}}; color: {{$outfit->lower->font_color}};">
                {{ $outfit->lower->name }}
            </div>
        </div>
        @endforeach

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>

