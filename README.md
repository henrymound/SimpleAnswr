# SimpleAnswr
A tool that finds short, reliable answers to questions.

<h3>Where SimpleAnswr Will Get its Data</h3>

One of the ways we plan to collect data with SimpleAnswr is to parse google search queries. Currently, when simple search phrases and questions are entered into Google, Google often scans sources for the answer displays its findings on the search results page. One thing to note is that this only works in some cases, and it only works when the search term has a definitive answer. 

Google tags these answers in a table with the div tag <b>kpd-ans</b>.

One way SimpleAnswr gathers its data is by scanning pages, finding these tags, and extracting the useful information.
