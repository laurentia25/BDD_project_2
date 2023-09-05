from browser import Browser


def before_all(context):
    """
    Vom defini toate instructiunile care trebuie executate
    inaintea rularii tuturor pasilor
    """
    context.browser = Browser()


def after_all(context):
    """
    Vom defini toate instructiunile care trebuie executate
    dupa rularea tuturor pasilor
    """
    context.browser.close()
