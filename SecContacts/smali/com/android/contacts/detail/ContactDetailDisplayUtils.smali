.class public Lcom/android/contacts/detail/ContactDetailDisplayUtils;
.super Ljava/lang/Object;
.source "ContactDetailDisplayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;,
        Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;
    }
.end annotation


# static fields
.field private static sImageGetter:Landroid/text/Html$ImageGetter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method static addStreamItemText(Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "streamItem"
    .parameter "rootView"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 404
    const v4, 0x7f09033b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 405
    .local v2, htmlView:Landroid/widget/TextView;
    const v4, 0x7f09033c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 407
    .local v0, attributionView:Landroid/widget/TextView;
    const v4, 0x7f09033d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 408
    .local v1, commentsView:Landroid/widget/TextView;
    new-instance v3, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;-><init>(Landroid/content/pm/PackageManager;)V

    .line 411
    .local v3, imageGetter:Landroid/text/Html$ImageGetter;
    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getDecodedText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 413
    invoke-static {p1, p0}, Lcom/android/contacts/util/ContactBadgeUtil;->getSocialDate(Lcom/android/contacts/util/StreamItemEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 416
    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getDecodedComments()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 417
    return-object p2
.end method

.method public static createStreamItemView(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 16
    .parameter "inflater"
    .parameter "context"
    .parameter "convertView"
    .parameter "streamItem"
    .parameter "photoClickListener"

    .prologue
    .line 306
    if-eqz p2, :cond_1

    .line 307
    move-object/from16 v8, p2

    .line 312
    .local v8, container:Landroid/view/View;
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    .line 313
    .local v2, contactPhotoManager:Lcom/android/contacts/ContactPhotoManager;
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v14

    .line 314
    .local v14, photos:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/util/StreamItemPhotoEntry;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    .line 317
    .local v13, photoCount:I
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1, v8}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->addStreamItemText(Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View;)Landroid/view/View;

    .line 320
    const v3, 0x7f09033a

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 322
    .local v10, imageRows:Landroid/view/ViewGroup;
    if-nez v13, :cond_2

    .line 324
    const/16 v3, 0x8

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 374
    :cond_0
    return-object v8

    .line 309
    .end local v2           #contactPhotoManager:Lcom/android/contacts/ContactPhotoManager;
    .end local v8           #container:Landroid/view/View;
    .end local v10           #imageRows:Landroid/view/ViewGroup;
    .end local v13           #photoCount:I
    .end local v14           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/util/StreamItemPhotoEntry;>;"
    :cond_1
    const v3, 0x7f04016b

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .restart local v8       #container:Landroid/view/View;
    goto :goto_0

    .line 327
    .restart local v2       #contactPhotoManager:Lcom/android/contacts/ContactPhotoManager;
    .restart local v10       #imageRows:Landroid/view/ViewGroup;
    .restart local v13       #photoCount:I
    .restart local v14       #photos:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/util/StreamItemPhotoEntry;>;"
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 330
    add-int/lit8 v3, v13, 0x1

    div-int/lit8 v11, v3, 0x2

    .line 333
    .local v11, numImageRows:I
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 336
    .local v12, numOldImageRows:I
    if-ne v12, v11, :cond_4

    .line 353
    :cond_3
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v13, :cond_0

    .line 354
    div-int/lit8 v3, v9, 0x2

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 356
    .local v5, imageRow:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 359
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/util/StreamItemPhotoEntry;

    const v6, 0x7f090340

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 361
    const v3, 0x7f090341

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 362
    .local v15, secondContainer:Landroid/view/View;
    add-int/lit8 v3, v9, 0x1

    if-ge v3, v13, :cond_6

    .line 364
    add-int/lit8 v3, v9, 0x1

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/util/StreamItemPhotoEntry;

    const v6, 0x7f090342

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 366
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :goto_2
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 339
    .end local v5           #imageRow:Landroid/view/View;
    .end local v9           #i:I
    .end local v15           #secondContainer:Landroid/view/View;
    :cond_4
    if-ge v12, v11, :cond_5

    .line 341
    move v9, v12

    .restart local v9       #i:I
    :goto_3
    if-ge v9, v11, :cond_3

    .line 342
    const v3, 0x7f04016d

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 341
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 347
    .end local v9           #i:I
    :cond_5
    move v9, v11

    .restart local v9       #i:I
    :goto_4
    if-ge v9, v12, :cond_3

    .line 348
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 347
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 369
    .restart local v5       #imageRow:Landroid/view/View;
    .restart local v15       #secondContainer:Landroid/view/View;
    :cond_6
    const/4 v3, 0x4

    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public static getAttribution(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "contactData"

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, directoryDisplayName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryType()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, directoryType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v0

    .line 144
    .local v2, displayName:Ljava/lang/String;
    :goto_0
    const v3, 0x7f0d01ce

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .end local v0           #directoryDisplayName:Ljava/lang/String;
    .end local v1           #directoryType:Ljava/lang/String;
    .end local v2           #displayName:Ljava/lang/String;
    :goto_1
    return-object v3

    .restart local v0       #directoryDisplayName:Ljava/lang/String;
    .restart local v1       #directoryType:Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 141
    goto :goto_0

    .line 146
    .end local v0           #directoryDisplayName:Ljava/lang/String;
    .end local v1           #directoryType:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getCompany(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;
    .locals 17
    .parameter "context"
    .parameter "contactData"

    .prologue
    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getDisplayNameSource()I

    move-result v14

    const/16 v15, 0x1e

    if-ne v14, v15, :cond_7

    const/4 v4, 0x1

    .line 156
    .local v4, displayNameIsOrganization:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Entity;

    .line 157
    .local v5, entity:Landroid/content/Entity;
    invoke-virtual {v5}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Entity$NamedContentValues;

    .line 158
    .local v12, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v6, v12, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 159
    .local v6, entryValues:Landroid/content/ContentValues;
    const-string v14, "mimetype"

    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, mimeType:Ljava/lang/String;
    const-string v14, "vnd.android.cursor.item/organization"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 163
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 164
    const-string v14, "data1"

    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, company:Ljava/lang/String;
    const-string v14, "data4"

    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 166
    .local v13, title:Ljava/lang/String;
    const-string v14, "data5"

    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, department:Ljava/lang/String;
    const-string v14, "data6"

    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, job_description:Ljava/lang/String;
    const-string v14, "data9"

    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 170
    .local v11, office_location:Ljava/lang/String;
    const-string v1, ""

    .line 172
    .local v1, combined:Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 173
    move-object v1, v13

    .line 175
    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 177
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 183
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 184
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    :cond_4
    :goto_2
    if-eqz v9, :cond_5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 191
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_5
    :goto_3
    if-eqz v11, :cond_6

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 198
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    :cond_6
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 237
    .end local v1           #combined:Ljava/lang/String;
    .end local v2           #company:Ljava/lang/String;
    .end local v3           #department:Ljava/lang/String;
    .end local v5           #entity:Landroid/content/Entity;
    .end local v6           #entryValues:Landroid/content/ContentValues;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #job_description:Ljava/lang/String;
    .end local v10           #mimeType:Ljava/lang/String;
    .end local v11           #office_location:Ljava/lang/String;
    .end local v12           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v13           #title:Ljava/lang/String;
    :goto_5
    return-object v1

    .line 154
    .end local v4           #displayNameIsOrganization:Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 179
    .restart local v1       #combined:Ljava/lang/String;
    .restart local v2       #company:Ljava/lang/String;
    .restart local v3       #department:Ljava/lang/String;
    .restart local v4       #displayNameIsOrganization:Z
    .restart local v5       #entity:Landroid/content/Entity;
    .restart local v6       #entryValues:Landroid/content/ContentValues;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #job_description:Ljava/lang/String;
    .restart local v10       #mimeType:Ljava/lang/String;
    .restart local v11       #office_location:Ljava/lang/String;
    .restart local v12       #subValue:Landroid/content/Entity$NamedContentValues;
    .restart local v13       #title:Ljava/lang/String;
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 186
    :cond_9
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 193
    :cond_a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 200
    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 208
    .end local v1           #combined:Ljava/lang/String;
    .end local v2           #company:Ljava/lang/String;
    .end local v3           #department:Ljava/lang/String;
    .end local v9           #job_description:Ljava/lang/String;
    .end local v11           #office_location:Ljava/lang/String;
    .end local v13           #title:Ljava/lang/String;
    :cond_c
    const-string v14, "data1"

    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .restart local v2       #company:Ljava/lang/String;
    const-string v14, "data4"

    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 214
    .restart local v13       #title:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 215
    if-eqz v4, :cond_d

    const/4 v1, 0x0

    .line 230
    .restart local v1       #combined:Ljava/lang/String;
    :goto_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_5

    .end local v1           #combined:Ljava/lang/String;
    :cond_d
    move-object v1, v13

    .line 215
    goto :goto_6

    .line 217
    :cond_e
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 218
    if-eqz v4, :cond_f

    const/4 v1, 0x0

    .restart local v1       #combined:Ljava/lang/String;
    :goto_7
    goto :goto_6

    .end local v1           #combined:Ljava/lang/String;
    :cond_f
    move-object v1, v2

    goto :goto_7

    .line 220
    :cond_10
    if-eqz v4, :cond_11

    .line 221
    move-object v1, v13

    .restart local v1       #combined:Ljava/lang/String;
    goto :goto_6

    .line 223
    .end local v1           #combined:Ljava/lang/String;
    :cond_11
    const v14, 0x7f0d01de

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    const/16 v16, 0x1

    aput-object v13, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #combined:Ljava/lang/String;
    goto :goto_6

    .line 237
    .end local v1           #combined:Ljava/lang/String;
    .end local v2           #company:Ljava/lang/String;
    .end local v5           #entity:Landroid/content/Entity;
    .end local v6           #entryValues:Landroid/content/ContentValues;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #mimeType:Ljava/lang/String;
    .end local v12           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v13           #title:Ljava/lang/String;
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_5
.end method

.method public static getDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"
    .parameter "contactData"

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, displayName:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getAltDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, altDisplayName:Ljava/lang/CharSequence;
    new-instance v2, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v2, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 109
    .local v2, prefs:Lcom/android/contacts/preference/ContactsPreferences;
    const-string v3, ""

    .line 110
    .local v3, styledName:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 111
    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 112
    move-object v3, v1

    .line 119
    :goto_0
    return-object v3

    .line 114
    :cond_0
    move-object v3, v0

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getFirstListItemOffset(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 584
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    :cond_0
    const/high16 v0, -0x8000

    .line 588
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public static getImageGetter(Landroid/content/Context;)Landroid/text/Html$ImageGetter;
    .locals 2
    .parameter "context"

    .prologue
    .line 481
    sget-object v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->sImageGetter:Landroid/text/Html$ImageGetter;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;-><init>(Landroid/content/pm/PackageManager;)V

    sput-object v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->sImageGetter:Landroid/text/Html$ImageGetter;

    .line 484
    :cond_0
    sget-object v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->sImageGetter:Landroid/text/Html$ImageGetter;

    return-object v0
.end method

.method public static getPhoneticName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "contactData"

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getPhoneticName()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, phoneticName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    .end local v0           #phoneticName:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #phoneticName:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V
    .locals 10
    .parameter "contactPhotoManager"
    .parameter "streamItem"
    .parameter "streamItemPhoto"
    .parameter "photoContainer"
    .parameter "imageViewId"
    .parameter "photoClickListener"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 381
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 382
    .local v8, frame:Landroid/view/View;
    const v0, 0x7f09033f

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 383
    .local v9, pushLayerView:Landroid/view/View;
    const v0, 0x7f090320

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 384
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz p5, :cond_0

    .line 385
    invoke-virtual {v9, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    new-instance v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;

    invoke-direct {v0, p1, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;-><init>(Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 387
    invoke-virtual {v9, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 388
    invoke-virtual {v9, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 398
    :goto_0
    invoke-virtual {p2}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x1

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    .line 400
    return-void

    .line 390
    :cond_0
    invoke-virtual {v9, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    invoke-virtual {v9, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 392
    invoke-virtual {v9, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 394
    invoke-virtual {v9, v4}, Landroid/view/View;->setClickable(Z)V

    .line 395
    invoke-virtual {v9, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static requestToMoveToOffset(Landroid/widget/ListView;I)V
    .locals 2
    .parameter "listView"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 604
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 614
    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public static setAlphaOnViewBackground(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "alpha"

    .prologue
    .line 575
    return-void
.end method

.method public static setCompanyName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V
    .locals 1
    .parameter "context"
    .parameter "contactData"
    .parameter "textView"

    .prologue
    .line 436
    if-nez p2, :cond_0

    .line 440
    :goto_0
    return-void

    .line 439
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getCompany(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private static setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 1
    .parameter "textToDisplay"
    .parameter "textView"

    .prologue
    .line 469
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 476
    :goto_0
    return-void

    .line 473
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V
    .locals 1
    .parameter "context"
    .parameter "contactData"
    .parameter "textView"

    .prologue
    .line 425
    if-nez p2, :cond_0

    .line 429
    :goto_0
    return-void

    .line 428
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public static setSocialSnippet(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 12
    .parameter "context"
    .parameter "contactData"
    .parameter "statusView"
    .parameter "statusPhotoView"

    .prologue
    const/4 v4, 0x0

    .line 271
    if-nez p2, :cond_0

    .line 298
    :goto_0
    return-void

    .line 275
    :cond_0
    const/4 v11, 0x0

    .line 276
    .local v11, snippet:Ljava/lang/CharSequence;
    const/4 v10, 0x0

    .line 277
    .local v10, photoUri:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/util/StreamItemEntry;

    .line 279
    .local v8, firstEntry:Lcom/android/contacts/util/StreamItemEntry;
    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/contacts/util/HtmlUtils;->fromHtml(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    .line 280
    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/util/StreamItemPhotoEntry;

    .line 282
    .local v9, firstPhoto:Lcom/android/contacts/util/StreamItemPhotoEntry;
    invoke-virtual {v9}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getPhotoUri()Ljava/lang/String;

    move-result-object v10

    .line 285
    const/4 v11, 0x0

    .line 288
    .end local v8           #firstEntry:Lcom/android/contacts/util/StreamItemEntry;
    .end local v9           #firstPhoto:Lcom/android/contacts/util/StreamItemPhotoEntry;
    :cond_1
    invoke-static {v11, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 289
    if-eqz v10, :cond_2

    .line 291
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x1

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    const-wide/16 v6, 0x0

    move-object v1, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    .line 294
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 296
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setStarred(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/CheckBox;)V
    .locals 1
    .parameter "contactData"
    .parameter "starredView"

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 248
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->getStarred()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setStarred(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;)V
    .locals 1
    .parameter "contactData"
    .parameter "layoutStar"
    .parameter "starredView"

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 258
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->getStarred()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
