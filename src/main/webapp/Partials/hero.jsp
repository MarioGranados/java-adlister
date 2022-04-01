<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 3/31/22
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza</title>
    <%@ include file="head.jsp" %>
</head>
<body>
<form class="container mb-2" method="POST" action="pizza-order">

    <!--background image-->
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Welcome To Pizza World!</h1>
        </div>
    </div>

    <!--tabs go here-->

    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
            <a class="nav-link active"
               id="crust_tab"
               data-toggle="tab" href="#crust" role="tab" aria-controls="crust"
               aria-selected="true">
                <span class="badge badge-pill badge-dark mx-1">1</span>
                Size and Crust
            </a>
        </li>
        <li class="nav-item" role="presentation">
            <a class="nav-link" id="sauces_tab" data-toggle="tab" href="#sauces" role="tab" aria-controls="sauces"
               aria-selected="false">
                <span class="badge badge-pill badge-dark mx-1">2</span>
                Cheese and Sauce
            </a>
        </li>
        <li class="nav-item" role="presentation">
            <a class="nav-link" id="toppings_tab" data-toggle="tab" href="#toppings" role="tab" aria-controls="toppings"
               aria-selected="false">
                <span class="badge badge-pill badge-dark mx-1">3</span>
                Toppings
            </a>
        </li>
    </ul>
    <div class="tab-content" id="myTabContent">
        <!--first Tab-->
        <div class="tab-pane fade show active" id="crust" role="tabpanel" aria-labelledby="cheese_tab">
            <!--This is the main container for the tabs, the one with the blue header-->
            <div class="card">
                <div class="card-body">
                    <div class="card" style="width: 100%;">
                        <div class="card-header bg-primary badge-primary">
                            Choose Size and Crust
                        </div>
                        <!--tab body starts here-->
                        <!--this contains a card-->
                        <div class="card-body">
                            <div class="card mb-4" style="width: 100%;">
                                <div class="card-header">
                                    Hand Tossed
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">Garlic Season Crust With Buttery Taste</li>
                                    <li class="list-group-item">
                                        <!--Radio Button here-->
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="crust"
                                                   id="handTossedSmall" value="handTossedSmall" checked>
                                            <label class="form-check-label" for="handTossedSmall">
                                                Small ("10")
                                            </label>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <!--Second Radio-->
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="crust" id="handTossedMed"
                                                   value="handTossedMed" checked>
                                            <label class="form-check-label" for="handTossedMed">
                                                Medium ("12")
                                            </label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!--another card is added the tab body-->
                            <div class="card" style="width: 100%;">
                                <div class="card-header">
                                    Crispy Thin
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">Think enough for optimum crispy to crunchy ratio</li>
                                    <li class="list-group-item">
                                        <!--Radio Button here-->
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="crust" id="thinCrustMed"
                                                   value="ThinCrustMed" checked>
                                            <label class="form-check-label" for="thinCrustMed">
                                                Medium ("12")
                                            </label>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <!--Second Radio Here-->
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="crust"
                                                   id="thinCrustLarge" value="ThinCrustLarge" checked>
                                            <label class="form-check-label" for="thinCrustLarge">
                                                Large ("14")
                                            </label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!--footer for tabs-->
                        <div class="card-footer d-flex justify-content-end">
                            <button type="button" class="btn btn-primary" onclick="nextTab()">Next</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--second Tab-->
        <div class="tab-pane fade" id="sauces" role="tabpanel" aria-labelledby="sauces_tab">
            <!--This is the main container for the tabs, the one with the blue header-->
            <div class="card">
                <div class="card-body">
                    <div class="card" style="width: 100%;">
                        <div class="card-header bg-primary badge-primary">
                            Choose Cheese and Sauce
                        </div>
                        <!--tab body starts here-->
                        <!--this contains a card-->
                        <div class="card-body">
                            <div class="card mb-4" style="width: 100%;">
                                <div class="card-header">
                                    Cheese
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <!--selector dropdown-->
                                        <label for="cheeseAmount">How Much?</label>
                                        <select class="form-control" id="cheeseAmount" name="cheeseAmount">
                                            <option>Light</option>
                                            <option selected>Regular</option>
                                            <option>Extra</option>
                                            <option>Double</option>
                                        </select>
                                    </li>
                                </ul>
                            </div>
                            <!--another card is added the tab body-->
                            <div class="card" style="width: 100%;">
                                <div class="card-header">
                                    Sauce
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <!--selector dropdown-->
                                        <label for="sauceType">What Type of Sauce?</label>
                                        <select class="form-control" id="sauceType" name="sauceType">
                                            <option>Tomato Sauce</option>
                                            <option selected>Marinara Sauce</option>
                                            <option>BBQ Sauce</option>
                                            <option>Alfredo Sauce</option>
                                        </select>
                                    </li>
                                    <li class="list-group-item">
                                        <!--selector dropdown-->
                                        <label for="sauceAmount">How Much?</label>
                                        <select class="form-control" id="sauceAmount" name="sauceAmount">
                                            <option>Light</option>
                                            <option selected>Regular</option>
                                            <option>Extra</option>
                                            <option>Double</option>
                                        </select>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-footer d-flex justify-content-end">
                            <button type="button" class="btn btn-primary mx-1" onclick="firstTab()">Prev</button>
                            <button type="button" class="btn btn-primary" onclick="nextTabs()">Next</button>
                        </div>
                    </div>
                    <!--footer for tabs-->

                </div>
            </div>
        </div>
        <!--third Tab-->
        <div class="tab-pane fade" id="toppings" role="tabpanel" aria-labelledby="toppings_tab">
            <!--This is the main container for the tabs, the one with the blue header-->
            <div class="card">
                <div class="card-body">
                    <div class="card" style="width: 100%;">
                        <div class="card-header bg-primary badge-primary">
                            Choose Toppings
                        </div>

                        <!--tab body starts here-->
                        <!--this contains a card-->
                        <div class="card-body">
                            <div class="card mb-4" style="width: 100%;">
                                <div class="card-header">
                                    Choose Meats
                                </div>
                                <ul class="list-group list-group-flush">
                                    <!--list item with radio buttons in each-->
                                    <li class="list-group-item">
                                        <!--radio button-->
                                        <input class="form-check-input" type="checkbox" value="beef" id="beef" name="beef">
                                        <label class="form-check-label" for="beef">
                                            Beef
                                        </label>
                                    </li>
                                    <li class="list-group-item">
                                        <!--Radio button-->
                                        <input class="form-check-input" type="checkbox" value="ham" id="ham" name=ham">
                                        <label class="form-check-label" for="ham">
                                            Ham
                                        </label>
                                    </li>
                                    <li class="list-group-item">
                                        <!--Radio button-->
                                        <input class="form-check-input" type="checkbox" value="phillySteak"
                                               id="phillySteak" name="phillySteak">
                                        <label class="form-check-label" for="phillySteak">
                                            Philly Steak
                                        </label>
                                    </li>
                                    <li class="list-group-item">
                                        <!--Radio button-->
                                        <input class="form-check-input" type="checkbox" value="bacon" id="bacon" name="bacon">
                                        <label class="form-check-label" for="bacon">
                                            Bacon
                                        </label>
                                    </li>
                                </ul>
                            </div>
                            <!--another card is added the tab body-->
                            <div class="card" style="width: 100%;">
                                <div class="card-header">
                                    Choose Non-Meats
                                </div>
                                <ul class="list-group list-group-flush">
                                    <!--list item with radio buttons in each-->
                                    <li class="list-group-item">
                                        <!--radio button-->
                                        <input class="form-check-input" type="checkbox" value="greenPeppers"
                                               id="greenPeppers">
                                        <label class="form-check-label" for="greenPeppers">
                                            Green Peppers
                                        </label>
                                    </li>
                                    <li class="list-group-item">
                                        <!--Radio button-->
                                        <input class="form-check-input" type="checkbox" value="mushrooms"
                                               id="mushrooms">
                                        <label class="form-check-label" for="mushrooms">
                                            Mushrooms
                                        </label>
                                    </li>
                                    <li class="list-group-item">
                                        <!--Radio button-->
                                        <input class="form-check-input" type="checkbox" value="onions" id="onions">
                                        <label class="form-check-label" for="onions">
                                            Onions
                                        </label>
                                    </li>
                                    <li class="list-group-item">
                                        <!--Radio button-->
                                        <input class="form-check-input" type="checkbox" value="jalapeno" id="jalapeno">
                                        <label class="form-check-label" for="jalapeno">
                                            Jalapeno Peppers
                                        </label>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!--footer for tabs-->
                        <div class="card-footer">
                            <button type="submit" class="btn btn-primary float-right">Submit Order</button>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>

</form>

<%@include file="footer.jsp" %>
<%@include file="bootstrap.jsp" %>

<script>
    let nextTab = () => {
        let firstTab = $('#myTab li:nth-child(2) a');
        firstTab.tab('show');
    }
    let nextTabs = () => {
        let secondTab = $('#myTab li:last-child a');
        secondTab.tab('show');
    }
    let firstTab = () => {
        $('#myTab li:first-child a').tab('show');
    }
</script>
</body>
</html>
