<@content for="js">
    <script type="text/javascript">

        $(function () {
            showSelectedOnly();
        });

        function showSelectedOnly(){
            var selectBox = $('#cardType')[0];
            var selected = selectBox.options[selectBox.selectedIndex].text.toLowerCase();

            $('#character').hide();
            $('#equipment').hide();
            $('#gambit').hide();
            $('#item').hide();

            $('#' + selected).show();
        };
    </script>
</@content>

<div style="text-align:center;margin-top:20px">

    <h3>Add a card to set ${set_name}</h3>

    <div style="margin-left:15%;margin-right:15%;border-style:solid;border-width:1px;padding:15px;margin-bottom:15px">
        <select name="cardType" id="cardType" onchange="showSelectedOnly()">
            <option value="character">Character</option>
            <option value="equipment">Equipment</option>
            <option value="gambit">Gambit</option>
            <option value="item">Item</option>
        </select>
    </div>

    <div id="character" style="margin-left:15%;margin-right:15%;border-style:solid;border-width:1px;padding:15px">
        <p>Character Data...</p>
    </div>
    <div id="equipment" style="margin-left:15%;margin-right:15%;border-style:solid;border-width:1px;padding:15px">
        <p>Equipment Data...</p>
    </div>
    <div id="gambit" style="margin-left:15%;margin-right:15%;border-style:solid;border-width:1px;padding:15px">
        <p>Gambit Data...</p>
    </div>
    <div id="item" style="margin-left:15%;margin-right:15%;border-style:solid;border-width:1px;padding:15px">
        <p>Item Data...</p>
    </div>

    <div style="text-align:center;padding-bottom:20px">
        <a href="/card_set/create_new_card" style="text-decoration:none;padding-right:10px">
            <button>Create Card</button>
        </a>
    </div>

    <div class="row margin-top-30">
        <div class="col-xs-4 text-right">
            <@link_to class="btn btn-red-b btn-lg width230" action="overview/${set_id}">Cancel</@link_to>
        </div>
        <div class="col-xs-4">
            <@link_to class="btn btn-green-c btn-lg width230" action="yes">Create</@link_to>
        </div>
    </div>

</div>