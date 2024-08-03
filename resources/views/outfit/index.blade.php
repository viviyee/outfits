<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
            body {
                background-color: #aaa;
            }
            select, input, button {
                display: block;
                margin: 10px 30px;
                max-width: 60%;
            }

            table td.date {
                border: 1px solid gray;
            }
            td.today {
                background-color: cyan;
            }
        </style>
    </head>
    <body>
        <h1>add outfits</h1>
        <a href="{{ route('outfit.bydate') }}" target="_blank">Outfits by date</a>

        <form method="POST" action="{{ route('outfit.store') }}">
            @csrf
            <select name="upper_id" class="form-control">
                @foreach ($upper_cloths as $cloth)
                    <option value="{{ $cloth->id }}" style="background-color: {{ $cloth->color }}; color: {{ $cloth->font_color }}">
                        {{ $cloth->id }} {{ $cloth->name }}
                    </option>
                @endforeach
            </select>

            <select name="lower_id" class="form-control">
                @foreach ($lower_cloths as $cloth)
                    <option value="{{ $cloth->id }}" style="background-color: {{ $cloth->color }}; color: {{ $cloth->font_color }}">
                        {{ $cloth->id }} {{ $cloth->name }}
                    </option>
                @endforeach
            </select>

            <input type="text" class="form-control" name="date" value="{{ date('Y-m-d') }}">

            <button type="submit" class="btn btn-primary">add</button>
        </form>

        <br>

        <div class="container">

            <table class="">
                @foreach ($upper_cloths->merge($lower_cloths) as $cloth)
                <tr>
                    <td style="background-color: {{$cloth->color}}; color: {{$cloth->font_color}}; padding: 10px;" width="300px">
                        {{ $cloth->name }}
                        <span class="badge rounded-pill text-bg-danger">{{ count($cloth->outfits) }}</span>
                    </td>

                    @foreach ($cloth->outfits as $outfit)
                    <td width="60px" class="date {{ date('m.d') === $outfit->short_date ? 'today' : ''}}">
                       {{ $outfit->short_date }}
                    </td>
                    @endforeach
                </tr>
                @endforeach
            </table>
        </div>
    </body>
</html>
