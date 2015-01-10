.class public Lcom/android/contacts/editor/RawContactReadOnlyEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "RawContactReadOnlyEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;
    }
.end annotation


# instance fields
.field private mAccountContainer:Landroid/view/View;

.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountName:Ljava/lang/String;

.field private mAccountNameTextView:Landroid/widget/TextView;

.field private mAccountType:Ljava/lang/String;

.field private mAccountTypeTextView:Landroid/widget/TextView;

.field private mDataSet:Ljava/lang/String;

.field private mEditExternallyButton:Landroid/widget/Button;

.field private mGeneral:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

.field private mName:Lcom/android/contacts/editor/StructuredNameEditorView;

.field private mPhotoStub:Landroid/view/View;

.field private mRawContactId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;)V

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getRawContactId()J
    .locals 2

    .prologue
    .line 307
    iget-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    return-wide v0
.end method

.method public getVibrationVisibility()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0902f6

    if-ne v0, v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    new-instance v1, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mDataSet:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;->onExternalEditorRequest(Lcom/android/contacts/model/AccountWithDataSet;Landroid/net/Uri;)V

    .line 329
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 103
    const v0, 0x7f0902ee

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mPhotoStub:Landroid/view/View;

    .line 105
    const v0, 0x7f0902f5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/StructuredNameEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    .line 106
    const v0, 0x7f0902f6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    .line 107
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f0902f7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    .line 110
    const v0, 0x7f090255

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    .line 111
    const v0, 0x7f0901e2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountIcon:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f090257

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f090258

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    .line 114
    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    .line 93
    return-void
.end method

.method public setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 17
    .parameter "state"
    .parameter "type"
    .parameter "vig"
    .parameter "isProfile"

    .prologue
    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 128
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v16

    .line 135
    .local v16, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v2, "account_name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    .line 136
    const-string v2, "account_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountType:Ljava/lang/String;

    .line 137
    const-string v2, "data_set"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mDataSet:Ljava/lang/String;

    .line 139
    if-eqz p4, :cond_7

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "vnd.sec.contact.phone"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 141
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    const v5, 0x7f0d0228

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 187
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    .line 195
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 196
    .local v3, kind:Lcom/android/contacts/model/DataKind;
    if-eqz v3, :cond_f

    .line 197
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 198
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v2

    if-eqz v2, :cond_d

    const/4 v13, 0x1

    .line 199
    .local v13, hasPhotoEditor:Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setHasPhotoEditor(Z)V

    .line 200
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    .line 201
    .local v4, primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v5

    if-nez v5, :cond_e

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mPhotoStub:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .end local v4           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v13           #hasPhotoEditor:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 208
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :cond_3
    :goto_5
    new-instance v11, Lcom/android/contacts/model/FallbackAccountType;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "vnd.sec.contact.phone"

    invoke-direct {v11, v2, v5}, Lcom/android/contacts/model/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    .local v11, accountType:Lcom/android/contacts/model/FallbackAccountType;
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v7

    .line 229
    .local v7, primaryValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const-string v2, "#displayName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    const/4 v9, 0x1

    move-object/from16 v8, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/contacts/editor/StructuredNameEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEnabled(Z)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/LabeledEditorView;->setDeletable(Z)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->setExpansionViewEnable(Z)V

    .line 239
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040112

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/editor/KindSectionView;

    .line 243
    .local v15, section:Lcom/android/contacts/editor/KindSectionView;
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v11, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v14

    .line 245
    .local v14, phoneKind:Lcom/android/contacts/model/DataKind;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 246
    const/4 v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v15, v14, v0, v2, v1}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 247
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/android/contacts/editor/KindSectionView;->setDeleteIconEnable(Z)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 253
    .end local v14           #phoneKind:Lcom/android/contacts/model/DataKind;
    .end local v15           #section:Lcom/android/contacts/editor/KindSectionView;
    :cond_4
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040112

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/editor/KindSectionView;

    .line 257
    .restart local v15       #section:Lcom/android/contacts/editor/KindSectionView;
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v11, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v12

    .line 259
    .local v12, emailKind:Lcom/android/contacts/model/DataKind;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 260
    const/4 v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v15, v12, v0, v2, v1}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 261
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/android/contacts/editor/KindSectionView;->setDeleteIconEnable(Z)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 266
    .end local v12           #emailKind:Lcom/android/contacts/model/DataKind;
    .end local v15           #section:Lcom/android/contacts/editor/KindSectionView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_11

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 144
    .end local v3           #kind:Lcom/android/contacts/model/DataKind;
    .end local v7           #primaryValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v11           #accountType:Lcom/android/contacts/model/FallbackAccountType;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 145
    .local v11, accountType:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0229

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v11, v8, v9

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 150
    .end local v11           #accountType:Ljava/lang/CharSequence;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 151
    .restart local v11       #accountType:Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v5, 0x7f0d014b

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 154
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 155
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 157
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 177
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v6, 0x7f0d01a1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v11, v8, v9

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 160
    :cond_a
    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 163
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v6, 0x7f0d01a2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 175
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 198
    .end local v11           #accountType:Ljava/lang/CharSequence;
    .restart local v3       #kind:Lcom/android/contacts/model/DataKind;
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 201
    .restart local v4       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v13       #hasPhotoEditor:Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 204
    .end local v4           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v13           #hasPhotoEditor:Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mPhotoStub:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 213
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    new-instance v5, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;-><init>(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 269
    .restart local v7       #primaryValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .local v11, accountType:Lcom/android/contacts/model/FallbackAccountType;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
