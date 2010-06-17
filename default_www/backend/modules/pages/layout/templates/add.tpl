{include:file='{$BACKEND_CORE_PATH}/layout/templates/head.tpl'}
{include:file='{$BACKEND_MODULES_PATH}/pages/layout/templates/structure_start.tpl'}

{form:add}
	{$hidTemplateId}

	<div class="pageTitle">
		<h2>{$lblAdd|ucfirst}</h2>
	</div>

	<div id="tabs" class="tabs">
		<ul>
			<li><a href="#tabContent">{$lblContent|ucfirst}</a></li>
			<li><a href="#tabSEO">{$lblSEO|ucfirst}</a></li>
			<li><a href="#tabTemplate">{$lblTemplate|ucfirst}</a></li>
			<li><a href="#tabTags">{$lblTags|ucfirst}</a></li>
		</ul>

		<div id="tabContent">

			<p id="pagesPageTitle">
				<label for="title">{$lblTitle|ucfirst}</label>
				{$txtTitle} {$txtTitleError}
			</p>

			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr>
						<td>
							<div id="editContent">
								{iteration:blocks}
								<div id="block-{$blocks.index}" class="box contentBlock">
										<div class="heading">
											<table border="0" cellpadding="0" cellspacing="0">
												<tbody>
													<tr>
														<td>
															<div class="oneLiner">
																<h3><span class="blockName">{$blocks.name}</span></h3>
																{* don't remove this class *}
																<p class="linkedExtra">
																	{* this will store the selected extra *}
																	{$blocks.hidExtraId}
																</p>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="editContent">
											<fieldset id="blockContentHTML-{$blocks.index}">
												{$blocks.txtHTML}
											</fieldset>
										</div>
									</div>
								{/iteration:blocks}
							</div>
						</td>
						<td id="sidebar">
							<div id="publishOptions" class="box">
								<div class="heading">
									<h3>{$lblPublish|ucfirst}</h3>
								</div>
								<!-- @later
								<div class="options">
									<div class="buttonHolder">
										<a href="#" class="button icon iconZoom previewButton" target="_blank">
											<span>{$lblPreview|ucfirst}</span>
										</a>
									</div>
								</div>
								 -->
								<div class="options">
									<ul class="inputList">
										{iteration:hidden}
											<li>
												{$hidden.rbtHidden} <label for="{$hidden.id}">{$hidden.label}</label>
											</li>
										{/iteration:hidden}
									</ul>
								</div>
								<div class="footer">
									<table border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td><p>&nbsp;</p></td>
												<td>
													<div class="buttonHolderRight">
														<input id="save" class="inputButton button" type="submit" name="save" value="{$lblSave|ucfirst}" />
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

							<div class="box" id="template">
								<div class="heading">
									<h4>{$lblTemplate|ucfirst}: {$templatelabel}</h4>
									<div class="buttonHolderRight">
										<a href="#tabTemplate" class="tabSelect button icon iconEdit iconOnly">
											<span>{$lblEdit|ucfirst}</span>
										</a>
									</div>
								</div>
								<div class="options">
									<div id="templateVisual" class="templateVisual current">
										{$templatehtml}
									</div>

									<table id="templateDetails" class="infoGrid" border="0" cellpadding="0" cellspacing="0">
										<tbody>
											{iteration:blocks}
												<tr>
													<th class="numbering">{$blocks.index}</th>
													<td class="blockName">{$blocks.name}</td>
												</tr>
											{/iteration:blocks}
										</tbody>
									</table>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="tabSEO">
			<div class="box boxLevel2">
				<div class="heading">
					<h3>{$lblTitles|ucfirst}</h3>
				</div>
				<div class="options">
					<p>
						<label for="pageTitleOverwrite">{$lblPageTitle|ucfirst}</label>
						<span class="helpTxt">{$msgHelpPageTitle}</span>
					</p>
					<ul class="inputList checkboxTextFieldCombo">
						<li>
							{$chkPageTitleOverwrite}
							{$txtPageTitle} {$txtPageTitleError}
						</li>
					</ul>
					<p>
						<label for="navigationTitleOverwrite">{$lblNavigationTitle|ucfirst}</label>
						<span class="helpTxt">{$msgHelpNavigationTitle}</span>
					</p>
					<ul class="inputList checkboxTextFieldCombo">
						<li>
							{$chkNavigationTitleOverwrite}
							{$txtNavigationTitle} {$txtNavigationTitleError}
						</li>
					</ul>
				</div>
			</div>

			<div id="seoNofollow" class="box boxLevel2">
				<div class="heading">
					<h3>Nofollow</h3>
				</div>
				<div class="options">
					<fieldset>
						<p class="helpTxt">{$msgHelpNoFollow}</p>
						<ul class="inputList">
							<li>
								{$chkNoFollow}
								<label for="noFollow">{$msgActivateNoFollow|ucfirst}</label>
							</li>
						</ul>
					</fieldset>
				</div>
			</div>

			<div id="seoMeta" class="box boxLevel2">
				<div class="heading">
					<h3>{$lblMetaInformation|ucfirst}</h3>
				</div>
				<div class="options">
					<p>
						<label for="metaDescriptionOverwrite">{$lblMetaDescription|ucfirst}</label>
						<span class="helpTxt">{$msgHelpMetaDescription}</span>
					</p>
					<ul class="inputList checkboxTextFieldCombo">
						<li>
							{$chkMetaDescriptionOverwrite}
							{$txtMetaDescription} {$txtMetaDescriptionError}
						</li>
					</ul>
					<p>
						<label for="metaKeywordsOverwrite">{$lblMetaKeywords|ucfirst}</label>
						<span class="helpTxt">{$msgHelpMetaKeywords}</span>
					</p>
					<ul class="inputList checkboxTextFieldCombo">
						<li>
							{$chkMetaKeywordsOverwrite}
							{$txtMetaKeywords} {$txtMetaKeywordsError}
						</li>
					</ul>
					<p>
						<label for="metaCustom">{$lblMetaCustom|ucfirst}</label>
						<span class="helpTxt">{$msgHelpMetaCustom}</span>
						{$txtMetaCustom} {$txtMetaCustomError}
					</p>
				</div>
			</div>

			<div class="box boxLevel2">
				<div class="heading">
					<h3>{$lblURL}</h3>
				</div>
				<div class="options">
					<label for="urlOverwrite">{$lblCustomURL|ucfirst}</label>
					<span class="helpTxt">{$msgHelpMetaURL}</span>

					<ul class="inputList checkboxTextFieldCombo">
						<li>
							{$chkUrlOverwrite}
							<span id="urlFirstPart">{$SITE_URL}/</span>{$txtUrl} {$txtUrlError}
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div id="tabTemplate">

			<div class="pageTitle">
				<h2>Template: {$templatelabel}</h2>
				<div class="buttonHolderRight">
					<a id="changeTemplate" href="#" class="button icon iconEdit">
						<span>{$lblEditTemplate|ucfirst}</span>
					</a>
				</div>
			</div>

			<div id="templateVisualLarge">
				{$templatehtmlLarge}
			</div>

			{*
				Dialog to select the content (editor, module or widget).
				Do not change the ID!
			 *}
			<div id="chooseExtra" title="{$lblChooseContent|ucfirst}" style="display: none;">
				<input type="hidden" id="extraForBlock" name="extraForBlock" value="" />
				<div class="options">
					<p>{$msgWhichContent}</p>
					<p id="extraWarningAlreadyBlock" class="warning">
						{$msgAlreadyBlock}
					</p>
					<p>
						<label for="extraType">{$lblType|ucfirst}</label>
						{$ddmExtraType}
					</p>
					<p id="extraModuleHolder" style="display: none;">
						<label for="extraModule">{$msgWhichModule}</label>
						<select id="extraModule">
							<option value="-1">-</option>
						</select>
					</p>
					<p id="extraExtraIdHolder" style="display: none;">
						<label for="extraExtraId">{$msgWhichWidget}</label>
						<select id="extraExtraId">
							<option value="-1">-</option>
						</select>
					</p>
				</div>
			</div>

			{*
				Dialog to select another template.
				Do not change the ID!
			 *}
			<div id="chooseTemplate" title="{$lblChooseTemplate|ucfirst}" style="display: none;">
				<ul class="inputList" id="templateList">
				{iteration:templates}
					<li style="float: left; width: 155px;">
						<input type="radio" id="template{$templates.id}" value="{$templates.id}" name="template_id_chooser" class="inputRadio"{option:templates.checked} checked="checked"{/option:templates.checked} />
						<label for="template{$templates.id}">{$templates.label}</label>
						<div class="templateVisual current">
							{$templates.html}
						</div>
					</li>
				{/iteration:templates}
				</ul>
			</div>

		</div>
		<div id="tabTags">
			<div class="box boxLevel2">
				<div class="heading">
					<h3>Tags</h3>
				</div>
				<div class="options">
					{$txtTags} {$txtTagsError}
				</div>
			</div>
		</div>
	</div>
	<div class="fullwidthOptions">
		<div class="buttonHolderRight">
			<input id="addButton" class="button mainButton" type="submit" name="add" value="{$lblAdd|ucfirst}" />
		</div>
	</div>
{/form:add}

<script type="text/javascript">
	//<![CDATA[
		// all the possible templates
		var templates = {};
		{iteration:templates}templates[{$templates.id}] = {$templates.json};{/iteration:templates}

		// the data for the extra's
		var extrasData = {};
		{option:extrasData}extrasData = {$extrasData};{/option:extrasData}

		// the extra's, but in a way we can access them based on their ID
		var extrasById = {};
		{option:extrasById}extrasById = {$extrasById};{/option:extrasById}
	//]]>
</script>

{include:file='{$BACKEND_MODULES_PATH}/pages/layout/templates/structure_end.tpl'}
{include:file='{$BACKEND_CORE_PATH}/layout/templates/footer.tpl'}