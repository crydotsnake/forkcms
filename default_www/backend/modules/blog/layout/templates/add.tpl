{include:file='{$BACKEND_CORE_PATH}/layout/templates/head.tpl'}
{include:file='{$BACKEND_CORE_PATH}/layout/templates/structure_start_module.tpl'}

<div class="pageTitle">
	<h2>{$lblBlog|ucfirst}: {$lblAdd}</h2>
</div>

{form:add}
	{$txtTitle} {$txtTitleError}

	<div id="pageUrl">
		<div class="oneLiner">
			<p>
				<span><a href="{$blogUrl}">{$blogUrl}/<span id="generatedUrl"></span></a></span>
			</p>
		</div>
	</div>

	<div class="tabs">
		<ul>
			<li><a href="#tabContent">{$lblContent|ucfirst}</a></li>
			<li><a href="#tabPermissions">{$lblPermissions|ucfirst}</a></li>
			<li><a href="#tabSEO">{$lblSEO|ucfirst}</a></li>
		</ul>

		<div id="tabContent">
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr>
					<td id="leftColumn">

						{* Main content *}
						<div class="box">
							<div class="heading headingRTE">
								<h3>{$lblMainContent|ucfirst}</h3>
							</div>
							<div class="optionsRTE">
								{$txtText} {$txtTextError}
							</div>
						</div>

						{* Summary *}
						<div class="box">
							<div class="heading">
								<div class="oneLiner">
									<h3>{$lblSummary|ucfirst}</h3>
									<abbr class="help">(?)</abbr>
									<div class="tooltip" style="display: none;">
										<p>{$msgHelpSummary}</p>
									</div>
								</div>
							</div>
							<div class="optionsRTE">
								{$txtIntroduction} {$txtIntroductionError}
							</div>
						</div>

					</td>

					<td id="sidebar">
						<div id="publishOptions" class="box">
							<div class="heading">
								<h3>{$lblPublish|ucfirst}</h3>
							</div>

							<div class="options">
								<div class="buttonHolder">
									{option:usingDraft}
										<a href="{$blogUrl}/{$blog['url']}?draft={$draftId}" class="button icon iconZoom" target="_blank"><span>{$lblPreview|ucfirst}</span></a>
										<br /><br />
									{/option:usingDraft}
									<a href="#" id="saveAsDraft" class="button"><span>{$lblSaveAsDraft|ucfirst}</span></a>
								</div>
							</div>

							<div class="options">
								<ul class="inputList">
									{iteration:hidden}
									<li>
										{$hidden.rbtHidden}
										<label for="{$hidden.id}">{$hidden.label}</label>
									</li>
									{/iteration:hidden}
								</ul>
							</div>

							<div class="options">
								<p>
									<label for="publishOnDate">{$lblPublishOn|ucfirst}:</label>
									{$txtPublishOnDate}
								</p>
								<p>
									<label for="publishOnTime">{$lblAt}</label>
									{$txtPublishOnTime}
								</p>
							</div>

							<div class="footer">
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td><p>&nbsp;</p></td>
											<td>
												<div class="buttonHolderRight">
													<input id="save" class="inputButton button mainButton" type="submit" name="save" value="{$lblPublish|ucfirst}" />
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<div id="category" class="box">
							<div class="heading">
								<h4>{$lblCategory|ucfirst}</h4>
								<div class="buttonHolderRight">
									<a href="#newCategory" class="toggleDiv button icon iconAdd iconOnly"><span>{$lblAddCategory|ucfirst}</span></a>
								</div>
							</div>
							<div class="options">
								{$ddmCategoryId} {$ddmCategoryIdError}
							</div>
							<div id="newCategory" class="options hidden">
								<div class="oneLiner">
									<p>
										<input id="newCategoryValue" class="inputTextfield dontSubmit" type="text" name="new_category" />
										<span id="newCategoryError" class="formError">{$errAddingCategoryFailed}</span>
									</p>
									<div class="buttonHolder">
										<a href="#" id="newCategoryButton" class="button icon iconAdd iconOnly"><span>{$lblAddCategory|ucfirst}</span></a>
									</div>
								</div>
							</div>
						</div>

						<div id="authors" class="box">
							<div class="heading">
								<h4>{$lblAuthor|ucfirst}</h4>
							</div>
							<div class="options">
								{$ddmUserId} {$ddmUserIdError}
							</div>
						</div>

						<div id="tagBox" class="box">
							<div class="heading">
								<h4>{$lblTags|ucfirst}</h4>
							</div>

							<div class="options">
								{$txtTags} {$txtTagsError}
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>

		<div id="tabPermissions">
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr>
					<td>
						{$chkAllowComments} <label for="allowComments">{$lblAllowComments|ucfirst}</label>
					</td>
				</tr>
			</table>
		</div>

		<div id="tabSEO">
			<div id="seoMeta" class="subtleBox">
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
					<div class="textareaHolder">
						<label for="metaCustom">{$lblMetaCustom|ucfirst}</label>
						<span class="helpTxt">{$msgHelpMetaCustom}</span>
						{$txtMetaCustom} {$txtMetaCustomError}
					</div>
				</div>
			</div>

			<div class="subtleBox">
				<div class="heading">
					<h3>{$lblURL|uppercase}</h3>
				</div>
				<div class="options">
					<label for="urlOverwrite">{$lblCustomURL|ucfirst}</label>
					<span class="helpTxt">{$msgHelpMetaURL}</span>
					<ul class="inputList checkboxTextFieldCombo">
						<li>
							{$chkUrlOverwrite}
							<span id="urlFirstPart">{$blogUrl}/</span>{$txtUrl} {$txtUrlError}
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="fullwidthOptions">
		<div class="buttonHolderRight">
			<input id="addButton" class="inputButton button mainButton" type="submit" name="add" value="{$lblPublish|ucfirst}" />
		</div>
	</div>
{/form:add}

{include:file='{$BACKEND_CORE_PATH}/layout/templates/structure_end_module.tpl'}
{include:file='{$BACKEND_CORE_PATH}/layout/templates/footer.tpl'}