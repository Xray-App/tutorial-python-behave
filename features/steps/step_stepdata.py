# ----------------------------------------------------------------------------
# STEPS:
# ----------------------------------------------------------------------------
from behave import given, when, then

@given(u'a sample text loaded into the frobulator')
def step_impl(context):
    pass 

@when(u'we activate the frobulator')
def step_impl(context):
    pass 


@then(u'we will find it similar to English')
def step_impl(context):
    pass 


@given(u'a set of specific users')
def step_impl(context):
    pass 


@when(u'we count the number of people in each department')
def step_impl(context):
    pass 


@then(u'we will find two people in "Silly Walks"')
def step_impl(context):
    pass 


@then(u'we will find one person in "Beer Cans"')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then we will find one person in "Beer Cans"')
