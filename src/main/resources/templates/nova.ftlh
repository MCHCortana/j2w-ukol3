[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Vizitkovník</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet"
          href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<div class="seznam">
    <div class="vizitka new-vizitka">
        <h2 class="jmeno container-heading-add_new">Přidejte vizitku</h2>
        <form class="form-new_person" method="post" action="/">
            <div class="row g-3">
                <div class="col">
                    <input id="full-name" name="jmeno" class="form-control form-control-sm" type="text" value=""
                           placeholder="Jméno a Příjmení"/>
                </div>
            </div>
            <div class="row g-3">
                <div class="col">
                    <input id="company" name="firma" class="form-auto form-control form-control-sm" type="text"
                           value="" placeholder="Firma"/>
                </div>
                <div class="col">
                    <input id="ZIPCity" name="obecPsc" class="form-control form-control-sm" type="text" value=""
                           placeholder="Město a PSČ:"/>
                </div>
            </div>
            <div class="row g-3">
                <div class=" col">
                    <input id="address" name="ulice" class="form-control form-control-sm" type="text" value=""
                           placeholder="Adresa:"/>
                </div>
                <div class="col">
                    <input id="phone" name="ulice" class="form-control form-control-sm" type="tel" value=""
                           placeholder="Telefon"/>
                </div>
            </div>
            <div class="row g-3">
                <div class="col">
                    <input id="email" name="email" class="form-control form-control-sm" type="email" value=""
                           placeholder="Email"/>
                </div>
                <div class="col">
                    <input id="web" name="web" class="form-control form-control-sm" type="text" value=""
                           placeholder="Web"/>
                </div>

            </div>
            <div class="row g-3">
                <div class="col">
                    <button type="submit" class="btn btn-primary"><i class="bi bi-person-plus-fill" role="img"
                                                                     aria-label="Append"></i>Přidat vizitku
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
