{if count($api_tags) > 0}
<table border="0" cellspacing="0" cellpadding="0">
{section name=tag loop=$api_tags}
{if $api_tags[tag].data != ""}
  <tr>
    <td class="indent"><strong>{$api_tags[tag].keyword|capitalize}:</strong>&nbsp;&nbsp;</td><td>{$api_tags[tag].data}</td>
  </tr>
{/if}
{/section}
</table>
<br />
{/if}
{if count($info_tags) > 0}
<table border="0" cellspacing="0" cellpadding="0">
{section name=tag loop=$info_tags}
	{if $info_tags[tag].data != ""}
		<tr><td><strong>{$info_tags[tag].keyword|capitalize}:</strong>&nbsp;&nbsp;</td><td>{$info_tags[tag].data}</td></tr>
	{/if}
{/section}
</table>
{/if}
