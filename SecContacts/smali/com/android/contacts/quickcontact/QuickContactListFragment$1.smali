.class Lcom/android/contacts/quickcontact/QuickContactListFragment$1;
.super Landroid/widget/BaseAdapter;
.source "QuickContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 169
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 29
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v24, v0

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static/range {v24 .. v24}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/quickcontact/Action;

    .line 176
    .local v4, action:Lcom/android/contacts/quickcontact/Action;
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v13

    .line 177
    .local v13, mimeType:Ljava/lang/String;
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->isPrimary()Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 181
    .local v12, is_primary:Z
    const-string v24, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 182
    const v16, 0x7f04013e

    .line 189
    .local v16, resource:I
    :goto_0
    if-eqz p2, :cond_c

    move-object/from16 v17, p2

    .line 193
    .local v17, resultView:Landroid/view/View;
    :goto_1
    const v24, 0x1020014

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 195
    .local v19, text1:Landroid/widget/TextView;
    const v24, 0x1020015

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 197
    .local v20, text2:Landroid/widget/TextView;
    const v24, 0x7f090126

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 200
    .local v5, actionsContainer:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "com.sec.feature.hovering_ui"

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 201
    const/16 v24, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 203
    :cond_0
    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 206
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 207
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 212
    const-string v24, "vnd.chaton.item/vnd.com.chaton.profile"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 213
    const v24, 0x7f0902d7

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 215
    .local v23, voiceCallActionButtonContainer:Landroid/view/View;
    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 216
    const v24, 0x7f0902de

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 217
    const v24, 0x7f0902e1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 219
    .local v22, videoCallActionButtonContainer:Landroid/view/View;
    const v24, 0x7f0902e0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 220
    const/16 v24, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    .end local v22           #videoCallActionButtonContainer:Landroid/view/View;
    .end local v23           #voiceCallActionButtonContainer:Landroid/view/View;
    :cond_1
    :goto_2
    const-string v24, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "vnd.android.cursor.item/vcall-address"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "vnd.android.cursor.item/ipcall-address"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "vnd.android.cursor.item/cdmacall-address"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "vnd.android.cursor.item/gsmcall2-address"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 299
    :cond_2
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v25, v0

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mDefaultCountryIso:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 301
    .local v14, phoneNumberE164:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 305
    .local v8, currentLang:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string v24, "iw"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 307
    :cond_3
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :goto_3
    const-string v24, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    const-string v24, "vnd.android.cursor.item/cdmacall-address"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    const-string v24, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    const-string v24, "vnd.android.cursor.item/gsmcall2-address"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 316
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v10

    .line 317
    .local v10, hasPhone:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v11

    .line 319
    .local v11, hasSms:Z
    const v24, 0x7f0902d9

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 321
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200()Z

    move-result v24

    if-eqz v24, :cond_17

    .line 322
    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 323
    const-string v24, "feature_skt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 324
    const v24, 0x7f0902d9

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    const v25, 0x7f020512

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundResource(I)V

    .line 339
    :cond_5
    :goto_4
    if-nez v10, :cond_6

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v11, v0, :cond_6

    .line 340
    const v24, 0x7f0902d9

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f020569

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    .end local v10           #hasPhone:Z
    .end local v11           #hasSms:Z
    :cond_6
    :goto_5
    const-string v24, "feature_spr"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 363
    const v24, 0x7f0902d9

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 364
    const v24, 0x7f0902db

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 365
    const v24, 0x7f0902da

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 366
    const v24, 0x7f090130

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 367
    const v24, 0x7f090132

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 368
    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    const v24, 0x7f090132

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    .end local v8           #currentLang:Ljava/lang/String;
    .end local v14           #phoneNumberE164:Ljava/lang/String;
    :cond_7
    :goto_6
    if-eqz v19, :cond_8

    .line 382
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v18

    .line 383
    .local v18, subtitle:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_21

    .line 385
    const/16 v24, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 391
    .end local v18           #subtitle:Ljava/lang/CharSequence;
    :cond_8
    :goto_7
    const v24, 0x7f09012d

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 394
    .local v15, primary_indicator:Landroid/widget/ImageView;
    if-eqz v15, :cond_22

    if-eqz v12, :cond_22

    .line 395
    const v24, 0x7f09012d

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_9
    :goto_8
    return-object v17

    .line 183
    .end local v5           #actionsContainer:Landroid/view/View;
    .end local v15           #primary_indicator:Landroid/widget/ImageView;
    .end local v16           #resource:I
    .end local v17           #resultView:Landroid/view/View;
    .end local v19           #text1:Landroid/widget/TextView;
    .end local v20           #text2:Landroid/widget/TextView;
    :cond_a
    const-string v24, "vnd.chaton.item/vnd.com.chaton.profile"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 184
    const v16, 0x7f040139

    .restart local v16       #resource:I
    goto/16 :goto_0

    .line 186
    .end local v16           #resource:I
    :cond_b
    const v16, 0x7f04013d

    .restart local v16       #resource:I
    goto/16 :goto_0

    .line 189
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v16

    move-object/from16 v2, p3

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    goto/16 :goto_1

    .line 262
    .restart local v5       #actionsContainer:Landroid/view/View;
    .restart local v17       #resultView:Landroid/view/View;
    .restart local v19       #text1:Landroid/widget/TextView;
    .restart local v20       #text2:Landroid/widget/TextView;
    :cond_d
    const v24, 0x7f090132

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 264
    .local v6, alternateActionButton:Landroid/widget/ImageView;
    const v24, 0x7f090130

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 265
    .local v7, alternateActionDivider:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-virtual {v6, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 268
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getAlternateIntent()Landroid/content/Intent;

    move-result-object v24

    if-eqz v24, :cond_f

    const/4 v9, 0x1

    .line 269
    .local v9, hasAlternateAction:Z
    :goto_9
    if-eqz v9, :cond_10

    const/16 v24, 0x0

    :goto_a
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 271
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getAlternateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    if-eqz v9, :cond_11

    const/16 v24, 0x0

    :goto_b
    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    const-string v24, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_e

    const-string v24, "vnd.android.cursor.item/cdmacall-address"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_e

    const-string v24, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 279
    :cond_e
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 280
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const v25, 0x7f0d0224

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 283
    if-eqz v9, :cond_1

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const v25, 0x7f0d0223

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 268
    .end local v9           #hasAlternateAction:Z
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 269
    .restart local v9       #hasAlternateAction:Z
    :cond_10
    const/16 v24, 0x8

    goto/16 :goto_a

    .line 272
    :cond_11
    const/16 v24, 0x8

    goto/16 :goto_b

    .line 287
    :cond_12
    const-string v24, "vnd.vapp.item/vnd.com.app.account"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0034

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v21, v0

    .line 290
    .local v21, topPadding:I
    const/16 v24, -0x5

    add-int/lit8 v25, v21, 0x1

    const/16 v26, -0x5

    add-int/lit8 v27, v21, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    .line 309
    .end local v6           #alternateActionButton:Landroid/widget/ImageView;
    .end local v7           #alternateActionDivider:Landroid/view/View;
    .end local v9           #hasAlternateAction:Z
    .end local v21           #topPadding:I
    .restart local v8       #currentLang:Ljava/lang/String;
    .restart local v14       #phoneNumberE164:Ljava/lang/String;
    :cond_13
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v25, v0

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mDefaultCountryIso:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v14, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 326
    .restart local v10       #hasPhone:Z
    .restart local v11       #hasSms:Z
    :cond_14
    const-string v24, "feature_kt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 327
    const v24, 0x7f0902d9

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    const v25, 0x7f02050f

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 329
    :cond_15
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 330
    const v24, 0x7f0902d9

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    const v25, 0x7f02050e

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 333
    :cond_16
    const v24, 0x7f0902d9

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    const v25, 0x7f02050f

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 337
    :cond_17
    const v24, 0x7f0902d9

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    const v25, 0x7f02050c

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 342
    .end local v10           #hasPhone:Z
    .end local v11           #hasSms:Z
    :cond_18
    const-string v24, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 343
    const v24, 0x7f0902d9

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 344
    :cond_19
    const-string v24, "vnd.android.cursor.item/ipcall-address"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 345
    const v24, 0x7f0902db

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 347
    :cond_1a
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature()V

    .line 348
    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 349
    const-string v24, "feature_skt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 350
    const v24, 0x7f0902da

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const v25, 0x7f02056d

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundResource(I)V

    .line 359
    :goto_c
    const v24, 0x7f0902da

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 351
    :cond_1b
    const-string v24, "feature_kt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 352
    const v24, 0x7f0902da

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const v25, 0x7f02056b

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_c

    .line 354
    :cond_1c
    const v24, 0x7f0902da

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const v25, 0x7f02056c

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_c

    .line 357
    :cond_1d
    const v24, 0x7f0902da

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const v25, 0x7f02056a

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_c

    .line 371
    .end local v8           #currentLang:Ljava/lang/String;
    .end local v14           #phoneNumberE164:Ljava/lang/String;
    :cond_1e
    const-string v24, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 372
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    const v24, 0x7f0902dc

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 374
    :cond_1f
    const-string v24, "vnd.vapp.item/vnd.com.app.account"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_20

    .line 375
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    const v24, 0x7f0902dd

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 378
    :cond_20
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 387
    .restart local v18       #subtitle:Ljava/lang/CharSequence;
    :cond_21
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 396
    .end local v18           #subtitle:Ljava/lang/CharSequence;
    .restart local v15       #primary_indicator:Landroid/widget/ImageView;
    :cond_22
    if-eqz v15, :cond_9

    .line 397
    const v24, 0x7f09012d

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8
.end method
