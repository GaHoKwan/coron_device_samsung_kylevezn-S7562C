.class public Lcom/android/contacts/quickcontact/DataAction;
.super Ljava/lang/Object;
.source "DataAction.java"

# interfaces
.implements Lcom/android/contacts/quickcontact/Action;


# instance fields
.field private mAlternateIconRes:I

.field private mAlternateIntent:Landroid/content/Intent;

.field private mBody:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field private mDataId:J

.field private mDataUri:Landroid/net/Uri;

.field private mIntent:Landroid/content/Intent;

.field private mIsPrimary:Z

.field private final mKind:Lcom/android/contacts/model/DataKind;

.field private final mMimeType:Ljava/lang/String;

.field private mSubtitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;J)V
    .locals 1
    .parameter "context"
    .parameter "mimeType"
    .parameter "kind"
    .parameter "dataId"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    .line 79
    iput-object p3, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    .line 80
    iput-object p2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    .line 81
    iput-wide p4, p0, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V
    .locals 35
    .parameter "context"
    .parameter "mimeType"
    .parameter "kind"
    .parameter "dataId"
    .parameter "cursor"

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    .line 111
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    .line 112
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    .line 115
    const-string v30, ""

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 116
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 117
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 118
    .local v25, typeColumnIndex:I
    const/16 v30, -0x1

    move/from16 v0, v25

    move/from16 v1, v30

    if-eq v0, v1, :cond_1

    .line 119
    move-object/from16 v0, p6

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 122
    .local v26, typeValue:I
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/contacts/model/AccountType$EditType;

    .line 123
    .local v24, type:Lcom/android/contacts/model/AccountType$EditType;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 124
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_9

    .line 126
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 138
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v24           #type:Lcom/android/contacts/model/AccountType$EditType;
    .end local v25           #typeColumnIndex:I
    .end local v26           #typeValue:I
    :cond_1
    :goto_0
    const-string v30, "is_super_primary"

    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v30

    if-eqz v30, :cond_2

    .line 139
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIsPrimary:Z

    .line 142
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    .line 146
    :cond_3
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    .line 147
    sget-object v30, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v9

    .line 150
    .local v9, hasPhone:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v10

    .line 153
    .local v10, hasSms:Z
    const-string v30, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4

    const-string v30, "vnd.android.cursor.item/cdmacall-address"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4

    const-string v30, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4

    const-string v30, "vnd.android.cursor.item/gsmcall2-address"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 157
    :cond_4
    if-nez v9, :cond_5

    if-eqz v10, :cond_7

    .line 158
    :cond_5
    const-string v30, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 159
    .local v19, number:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_7

    .line 166
    if-eqz v9, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v20

    .line 168
    .local v20, phoneIntent:Landroid/content/Intent;
    :goto_1
    if-eqz v10, :cond_b

    new-instance v23, Landroid/content/Intent;

    const-string v30, "android.intent.action.SENDTO"

    const-string v31, "smsto"

    const-string v32, ","

    const-string v33, "P"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    const-string v33, ";"

    const-string v34, "W"

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 171
    .local v23, smsIntent:Landroid/content/Intent;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/contacts/util/PhoneCapabilityTester;->isDualCall(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_d

    if-eqz v9, :cond_d

    .line 181
    const-string v30, "vnd.android.cursor.item/cdmacall-address"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 182
    const-string v30, "simnum"

    const/16 v31, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    :cond_6
    :goto_3
    if-eqz v9, :cond_f

    if-eqz v10, :cond_f

    .line 208
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 209
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    .line 210
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/model/DataKind;->iconAltRes:I

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const/high16 v31, 0x400

    invoke-virtual/range {v30 .. v31}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 336
    .end local v19           #number:Ljava/lang/String;
    .end local v20           #phoneIntent:Landroid/content/Intent;
    .end local v23           #smsIntent:Landroid/content/Intent;
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v30, v0

    if-nez v30, :cond_8

    .line 338
    new-instance v30, Landroid/content/Intent;

    const-string v31, "android.intent.action.VIEW"

    invoke-direct/range {v30 .. v31}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const/high16 v31, 0x1400

    invoke-virtual/range {v30 .. v31}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 344
    return-void

    .line 129
    .end local v9           #hasPhone:Z
    .end local v10           #hasSms:Z
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v24       #type:Lcom/android/contacts/model/AccountType$EditType;
    .restart local v25       #typeColumnIndex:I
    .restart local v26       #typeValue:I
    :cond_9
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p6

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 166
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v24           #type:Lcom/android/contacts/model/AccountType$EditType;
    .end local v25           #typeColumnIndex:I
    .end local v26           #typeValue:I
    .restart local v9       #hasPhone:Z
    .restart local v10       #hasSms:Z
    .restart local v19       #number:Ljava/lang/String;
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 168
    .restart local v20       #phoneIntent:Landroid/content/Intent;
    :cond_b
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 183
    .restart local v23       #smsIntent:Landroid/content/Intent;
    :cond_c
    const-string v30, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 184
    const-string v30, "simnum"

    const/16 v31, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 191
    :cond_d
    const-string v30, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 192
    const-string v30, "simSlot"

    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 193
    :cond_e
    const-string v30, "vnd.android.cursor.item/gsmcall2-address"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 194
    const-string v30, "simSlot"

    const/16 v31, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 214
    :cond_f
    if-eqz v9, :cond_10

    .line 215
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_4

    .line 216
    :cond_10
    if-eqz v10, :cond_7

    .line 217
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_4

    .line 221
    .end local v19           #number:Ljava/lang/String;
    .end local v20           #phoneIntent:Landroid/content/Intent;
    .end local v23           #smsIntent:Landroid/content/Intent;
    :cond_11
    const-string v30, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 223
    const-string v30, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, address:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_7

    .line 225
    const-string v30, "sip"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 226
    .local v5, callUri:Landroid/net/Uri;
    new-instance v30, Landroid/content/Intent;

    const-string v31, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_4

    .line 235
    .end local v3           #address:Ljava/lang/String;
    .end local v5           #callUri:Landroid/net/Uri;
    :cond_12
    const-string v30, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_13

    .line 236
    const-string v30, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    .restart local v3       #address:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_7

    .line 238
    const-string v30, "mailto"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 239
    .local v18, mailUri:Landroid/net/Uri;
    new-instance v30, Landroid/content/Intent;

    const-string v31, "android.intent.action.SENDTO"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_4

    .line 242
    .end local v3           #address:Ljava/lang/String;
    .end local v18           #mailUri:Landroid/net/Uri;
    :cond_13
    const-string v30, "vnd.android.cursor.item/website"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 243
    const-string v30, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 244
    .local v27, url:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_7

    .line 248
    :try_start_0
    new-instance v29, Landroid/net/WebAddress;

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 249
    .local v29, webAddress:Landroid/net/WebAddress;
    new-instance v30, Landroid/content/Intent;

    const-string v31, "android.intent.action.VIEW"

    invoke-virtual/range {v29 .. v29}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    invoke-direct/range {v30 .. v32}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 250
    .end local v29           #webAddress:Landroid/net/WebAddress;
    :catch_0
    move-exception v8

    .line 251
    .local v8, e:Landroid/net/ParseException;
    const-string v30, "DataAction"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Couldn\'t parse website: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 255
    .end local v8           #e:Landroid/net/ParseException;
    .end local v27           #url:Ljava/lang/String;
    :cond_14
    const-string v30, "vnd.android.cursor.item/im"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1e

    .line 256
    const-string v30, "vnd.android.cursor.item/email_v2"

    const-string v31, "mimetype"

    move-object/from16 v0, p6

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 258
    .local v16, isEmail:Z
    if-nez v16, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->isProtocolValid(Landroid/database/Cursor;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 259
    :cond_15
    if-eqz v16, :cond_19

    const/16 v22, 0x5

    .line 262
    .local v22, protocol:I
    :goto_5
    if-eqz v16, :cond_16

    .line 265
    const v30, 0x7f0d0186

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 266
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 269
    :cond_16
    const-string v30, "data6"

    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 270
    .local v11, host:Ljava/lang/String;
    if-eqz v16, :cond_1a

    const-string v30, "data1"

    :goto_6
    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, data:Ljava/lang/String;
    const/16 v30, -0x1

    move/from16 v0, v22

    move/from16 v1, v30

    if-eq v0, v1, :cond_17

    .line 274
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v11

    .line 277
    :cond_17
    if-eqz v11, :cond_7

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_7

    .line 278
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, authority:Ljava/lang/String;
    new-instance v30, Landroid/net/Uri$Builder;

    invoke-direct/range {v30 .. v30}, Landroid/net/Uri$Builder;-><init>()V

    const-string v31, "imto"

    invoke-virtual/range {v30 .. v31}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    .line 281
    .local v13, imUri:Landroid/net/Uri;
    new-instance v30, Landroid/content/Intent;

    const-string v31, "android.intent.action.SENDTO"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 285
    const-string v30, "chat_capability"

    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 286
    .local v6, chatCapability:I
    and-int/lit8 v30, v6, 0x4

    if-eqz v30, :cond_1b

    const/16 v17, 0x1

    .line 288
    .local v17, isVideoChatCapable:Z
    :goto_7
    and-int/lit8 v30, v6, 0x1

    if-eqz v30, :cond_1c

    const/4 v15, 0x1

    .line 290
    .local v15, isAudioChatCapable:Z
    :goto_8
    if-nez v17, :cond_18

    if-eqz v15, :cond_7

    .line 291
    :cond_18
    new-instance v30, Landroid/content/Intent;

    const-string v31, "android.intent.action.SENDTO"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "xmpp:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "?call"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    invoke-direct/range {v30 .. v32}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    .line 293
    if-eqz v17, :cond_1d

    const v30, 0x7f020659

    :goto_9
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    goto/16 :goto_4

    .line 259
    .end local v4           #authority:Ljava/lang/String;
    .end local v6           #chatCapability:I
    .end local v7           #data:Ljava/lang/String;
    .end local v11           #host:Ljava/lang/String;
    .end local v13           #imUri:Landroid/net/Uri;
    .end local v15           #isAudioChatCapable:Z
    .end local v17           #isVideoChatCapable:Z
    .end local v22           #protocol:I
    :cond_19
    const-string v30, "data5"

    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v22

    goto/16 :goto_5

    .line 270
    .restart local v11       #host:Ljava/lang/String;
    .restart local v22       #protocol:I
    :cond_1a
    const-string v30, "data1"

    goto/16 :goto_6

    .line 286
    .restart local v4       #authority:Ljava/lang/String;
    .restart local v6       #chatCapability:I
    .restart local v7       #data:Ljava/lang/String;
    .restart local v13       #imUri:Landroid/net/Uri;
    :cond_1b
    const/16 v17, 0x0

    goto :goto_7

    .line 288
    .restart local v17       #isVideoChatCapable:Z
    :cond_1c
    const/4 v15, 0x0

    goto :goto_8

    .line 293
    .restart local v15       #isAudioChatCapable:Z
    :cond_1d
    const v30, 0x7f020658

    goto :goto_9

    .line 299
    .end local v4           #authority:Ljava/lang/String;
    .end local v6           #chatCapability:I
    .end local v7           #data:Ljava/lang/String;
    .end local v11           #host:Ljava/lang/String;
    .end local v13           #imUri:Landroid/net/Uri;
    .end local v15           #isAudioChatCapable:Z
    .end local v16           #isEmail:Z
    .end local v17           #isVideoChatCapable:Z
    .end local v22           #protocol:I
    :cond_1e
    const-string v30, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1f

    .line 300
    const-string v30, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 301
    .local v21, postalAddress:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_7

    .line 302
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_4

    .line 304
    .end local v21           #postalAddress:Ljava/lang/String;
    :cond_1f
    const-string v30, "vnd.android.cursor.item/vcall-address"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_20

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 306
    const-string v30, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 307
    .restart local v19       #number:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_7

    .line 308
    const-string v30, "tel"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    .line 309
    .local v28, vtCallUri:Landroid/net/Uri;
    new-instance v30, Landroid/content/Intent;

    const-string v31, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v31, "videocall"

    const/16 v32, 0x1

    invoke-virtual/range {v30 .. v32}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_4

    .line 322
    .end local v19           #number:Ljava/lang/String;
    .end local v28           #vtCallUri:Landroid/net/Uri;
    :cond_20
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_Contact_EnableIPCall"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 324
    const-string v30, "vnd.android.cursor.item/ipcall-address"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIPCall(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 326
    const-string v30, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 327
    .restart local v19       #number:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_7

    .line 328
    const-string v30, "tel"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 329
    .local v14, ipCallUri:Landroid/net/Uri;
    new-instance v30, Landroid/content/Intent;

    const-string v31, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v31, "ipcall"

    const/16 v32, 0x1

    invoke-virtual/range {v30 .. v32}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V
    .locals 17
    .parameter "context"
    .parameter "mimeType"
    .parameter "kind"
    .parameter "ssp"
    .parameter "type"

    .prologue
    .line 349
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 350
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    .line 351
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    .line 352
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    .line 355
    const-string v12, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 356
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d017c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 362
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v12, v12, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-eqz v12, :cond_0

    .line 363
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    .line 366
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v3

    .line 367
    .local v3, hasPhone:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v4

    .line 370
    .local v4, hasSms:Z
    const-string v12, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "vnd.android.cursor.item/cdmacall-address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "vnd.android.cursor.item/gsmcall2-address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 374
    :cond_1
    if-nez v3, :cond_2

    if-eqz v4, :cond_4

    .line 375
    :cond_2
    move-object/from16 v7, p4

    .line 376
    .local v7, number:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 377
    if-eqz v3, :cond_8

    new-instance v8, Landroid/content/Intent;

    const-string v12, "android.intent.action.CALL_PRIVILEGED"

    const-string v13, "tel"

    const/4 v14, 0x0

    invoke-static {v13, v7, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 379
    .local v8, phoneIntent:Landroid/content/Intent;
    :goto_1
    if-eqz v4, :cond_9

    new-instance v10, Landroid/content/Intent;

    const-string v12, "android.intent.action.SENDTO"

    const-string v13, "smsto"

    const-string v14, ","

    const-string v15, "P"

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ";"

    const-string v16, "W"

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 382
    .local v10, smsIntent:Landroid/content/Intent;
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/contacts/util/PhoneCapabilityTester;->isDualCall(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_b

    if-eqz v3, :cond_b

    .line 392
    const-string v12, "vnd.android.cursor.item/cdmacall-address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 393
    const-string v12, "simnum"

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    :cond_3
    :goto_3
    if-eqz v3, :cond_d

    if-eqz v4, :cond_d

    .line 419
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 420
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    .line 421
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/contacts/model/DataKind;->iconAltRes:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 422
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    const/high16 v13, 0x400

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 472
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #phoneIntent:Landroid/content/Intent;
    .end local v10           #smsIntent:Landroid/content/Intent;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    if-nez v12, :cond_5

    .line 474
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 475
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const/high16 v13, 0x1400

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 480
    return-void

    .line 357
    .end local v3           #hasPhone:Z
    .end local v4           #hasSms:Z
    :cond_6
    const-string v12, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0056

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 360
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10403fc

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 377
    .restart local v3       #hasPhone:Z
    .restart local v4       #hasSms:Z
    .restart local v7       #number:Ljava/lang/String;
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 379
    .restart local v8       #phoneIntent:Landroid/content/Intent;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 394
    .restart local v10       #smsIntent:Landroid/content/Intent;
    :cond_a
    const-string v12, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 395
    const-string v12, "simnum"

    const/4 v13, 0x2

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 402
    :cond_b
    const-string v12, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 403
    const-string v12, "simSlot"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 404
    :cond_c
    const-string v12, "vnd.android.cursor.item/gsmcall2-address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 405
    const-string v12, "simSlot"

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 423
    :cond_d
    if-eqz v3, :cond_e

    .line 424
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_4

    .line 425
    :cond_e
    if-eqz v4, :cond_4

    .line 426
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_4

    .line 430
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #phoneIntent:Landroid/content/Intent;
    .end local v10           #smsIntent:Landroid/content/Intent;
    :cond_f
    const-string v12, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 431
    move-object/from16 v2, p4

    .line 432
    .local v2, address:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 433
    const-string v12, "mailto"

    const/4 v13, 0x0

    invoke-static {v12, v2, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 434
    .local v6, mailUri:Landroid/net/Uri;
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.SENDTO"

    invoke-direct {v12, v13, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_4

    .line 436
    .end local v2           #address:Ljava/lang/String;
    .end local v6           #mailUri:Landroid/net/Uri;
    :cond_10
    const-string v12, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 437
    move-object/from16 v2, p4

    .line 438
    .restart local v2       #address:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 439
    const-string v12, "sip"

    const/4 v13, 0x0

    invoke-static {v12, v2, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 440
    .local v9, sipUri:Landroid/net/Uri;
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v12, v13, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_4

    .line 442
    .end local v2           #address:Ljava/lang/String;
    .end local v9           #sipUri:Landroid/net/Uri;
    :cond_11
    const-string v12, "vnd.android.cursor.item/vcall-address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 443
    move-object/from16 v7, p4

    .line 444
    .restart local v7       #number:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 445
    const-string v12, "tel"

    const/4 v13, 0x0

    invoke-static {v12, v7, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 446
    .local v11, vtCallUri:Landroid/net/Uri;
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v12, v13, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 447
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v13, "videocall"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_4

    .line 458
    .end local v7           #number:Ljava/lang/String;
    .end local v11           #vtCallUri:Landroid/net/Uri;
    :cond_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 460
    const-string v12, "vnd.android.cursor.item/ipcall-address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 461
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIPCall(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 462
    move-object/from16 v7, p4

    .line 463
    .restart local v7       #number:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 464
    const-string v12, "tel"

    const/4 v13, 0x0

    invoke-static {v12, v7, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 465
    .local v5, ipCallUri:Landroid/net/Uri;
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v12, v13, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 466
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v13, "ipcall"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "mimeType"
    .parameter "body"
    .parameter "subtitle"
    .parameter "intent"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    .line 92
    iput-object p2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    .line 94
    iput-object p4, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 95
    iput-object p5, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 97
    const-string v0, "vnd.vapp.item/vnd.com.app.account"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    .line 99
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    const-string v1, "com.sds.vapp.voipcall"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    const-string v1, "user_account"

    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    const-string v1, "video_call"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    const v0, 0x7f02056e

    iput v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 104
    :cond_0
    return-void
.end method

.method private static getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 558
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 559
    .local v0, index:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1
.end method

.method private static getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 552
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 553
    .local v0, index:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isProtocolValid(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 563
    const-string v3, "data5"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 564
    .local v0, columnIndex:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    :goto_0
    return v2

    .line 568
    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    const/4 v2, 0x1

    goto :goto_0

    .line 569
    :catch_0
    move-exception v1

    .line 570
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 633
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    const/4 v0, 0x0

    .line 636
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->collapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method

.method public getAlternateIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 607
    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    if-nez v3, :cond_0

    .line 618
    :goto_0
    return-object v2

    .line 609
    :cond_0
    const-string v3, "vnd.vapp.item/vnd.com.app.account"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 610
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 612
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v1, v3, Lcom/android/contacts/model/DataKind;->resourcePackageName:Ljava/lang/String;

    .line 613
    .local v1, resourcePackageName:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 614
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 617
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 618
    .local v0, pm:Landroid/content/pm/PackageManager;
    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getAlternateIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIsPrimary:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setSocialData(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "cursor"
    .parameter "dataMimeType"
    .parameter "strName"

    .prologue
    const/4 v6, 0x1

    .line 512
    const-string v4, "is_super_primary"

    invoke-static {p1, v4}, Lcom/android/contacts/quickcontact/DataAction;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 513
    iput-boolean v6, p0, Lcom/android/contacts/quickcontact/DataAction;->mIsPrimary:Z

    .line 516
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0126

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    .line 518
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.quicksender.LAUNCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 521
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 522
    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v5, "recipient_name"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    :cond_1
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 526
    const-string v4, "data1"

    invoke-static {p1, v4}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 527
    .local v3, strNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 528
    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v5, "recipient_phone"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    .end local v3           #strNumber:Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const/high16 v5, 0x1400

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 549
    return-void

    .line 531
    :cond_3
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 532
    const-string v4, "data1"

    invoke-static {p1, v4}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, strEmail:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 534
    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v5, "recipient_email"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 536
    .end local v2           #strEmail:Ljava/lang/String;
    :cond_4
    const-string v4, "vnd.android.cursor.item/vnd.twitter.profile"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 537
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, strAccountName:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 539
    .local v0, iPersonId:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 540
    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v5, "recipient_sns_provider"

    const-string v6, "twitter"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v5, "recipient_sns_account_id"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v5, "recipient_sns_source_id"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 6
    .parameter "t"

    .prologue
    const/4 v1, 0x0

    .line 641
    if-nez p1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return v1

    .line 644
    :cond_1
    instance-of v2, p1, Lcom/android/contacts/quickcontact/DataAction;

    if-nez v2, :cond_2

    .line 645
    const-string v2, "DataAction"

    const-string v3, "t must be DataAction"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 648
    check-cast v0, Lcom/android/contacts/quickcontact/DataAction;

    .line 649
    .local v0, that:Lcom/android/contacts/quickcontact/DataAction;
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4, v5}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 652
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method
