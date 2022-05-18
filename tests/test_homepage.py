"""Home Page feature tests."""

from pytest_bdd import (
    given,
    scenario,
    then,
    when,
)

from requests_html import HTMLSession
URL ='http://localhost:5000/'


@scenario('../feature/homePage.feature', 'Hello Message')
def test_hello_message():
    """Hello Message."""


@given('user visits home page', target_fixture='res')
def user_visits_home_page():
    """user visits home page."""
    ses = HTMLSession()
    res = ses.get(URL)
    return res


@then('the reponse status should be 200')
def the_reponse_status_should_be_200(res):
    """the reponse status should be 200."""
    assert 200 == res.status_code



@then('user should see hello message')
def user_should_see_hello_message(res):
    """user should see hello message."""
    assert 'hello' in res.text

