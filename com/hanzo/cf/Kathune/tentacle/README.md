========
Tentacles
========

A tentacle in Kathune is a self-contained spider. It is invoked by the Kathune spidering engine in a queue-like cycle, but can also be
instantiated on its own, to serve as a sort of "unit test", to confirm that the rules to parse its site are valid.

======
Process
======

We'll use the Battle.net forums as an example.

1. A new sub-directory is created for the tentacle. ( /tentacle/Blizzard/ )

2. com.cf.Kathune.KathuneTentacle is sub-classed. ( /tentacle/Blizzard/BlizzardTentacle.cfc )

3. In the init() method, regular expressions used to extract the forum Link and Body are set. Appropriate back-reference allowances
are specified with parenthesis (per regular expression syntax):
    a) A link requires two back-references: the hook id, and the link title.
    b) A body requires only one back-reference: the body of the post.

4. The appropriate methods described in com.cf.Kathune.interface.ITentacle are then populated into:
    a) the body of the sub-class, and/or
    b) the body of one or more sub-classes of *that* class.

5. The only method that MUST be written by hand for each sub-classed tentacle is TitleToPostStruct(). You can 
base your own implementation on the one provided in KathuneTentacle.cfc. This was done so that sub-classes can
side-step it completely, as it is CPU intensive, and isn't needed in some cases.