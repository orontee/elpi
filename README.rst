============================================
 Emacs Lisp Packages for Info documentation
============================================

This is a collection of recipes to build GNU Emacs packages wrapping
Info documentation.

Why?
====

There are various reasons why one needs such recipes:

1. When a computer host run the Debian GNU/Linux operating system,
   there are Info documentation files not distributed from the
   official repositories because of licence considerations (eg GNU
   Bash); Users of such host repeatedly search the web for
   documentation and install it by hand.

2. Many Python based projects don't distribute Info documentation
   althought they build their documentation with Sphinx which has a
   Texinfo builder (eg Django): One has to build and install that
   documentation by hand.

3. All documentation should be easily available to users: Do not rely
   on a system administrator to read documentation.

4. Local and integrated documentation is always better that online
   documentation.

5. Distributing documentation encapsulated in GNU Emacs packages ease
   the installation process for GNU Emacs users

How?
====

Install ``sphinx``, ``asciidoc``, ``docbook2xml`` and... the
dependencies expected by the documentation you want to build...

Then it should be a matter of running ``make``.

.. Local Variables:
.. ispell-local-dictionary: "en"
.. End:
