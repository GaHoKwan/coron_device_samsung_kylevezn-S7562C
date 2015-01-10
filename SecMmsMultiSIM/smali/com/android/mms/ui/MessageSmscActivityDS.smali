.class public Lcom/android/mms/ui/MessageSmscActivityDS;
.super Landroid/app/Activity;
.source "MessageSmscActivityDS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageSmscActivityDS$TabFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final SIM1:Ljava/lang/String; = "SIM1"

.field private static final SIM2:Ljava/lang/String; = "SIM2"

.field private static final SMSC_URI:Landroid/net/Uri; = null

.field private static final SMSC_URI2:Landroid/net/Uri; = null

.field private static Smsc1:Ljava/lang/String; = null

.field private static Smsc2:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/MessageSmscActivityDS"

.field private static mtabState:I

.field private static final multiSimNum:I

.field private static simActive1:Z

.field private static simActive2:Z


# instance fields
.field private mSmscEditor:Landroid/widget/EditText;

.field private mTabSpec1:Landroid/widget/TabHost$TabSpec;

.field private mTabSpec2:Landroid/widget/TabHost$TabSpec;

.field private mTabs:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/ui/MessageSmscActivityDS;->mtabState:I

    .line 71
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageSmscActivityDS;->multiSimNum:I

    .line 80
    const-string v0, "content://sms/smsc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageSmscActivityDS;->SMSC_URI:Landroid/net/Uri;

    .line 81
    const-string v0, "content://sms/smsc2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageSmscActivityDS;->SMSC_URI2:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 160
    return-void
.end method

.method private final LoadInitData()V
    .locals 4

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 179
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a012b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    .local v0, not_set:Ljava/lang/String;
    const-string v2, "pref_key_manage_smsc_address"

    const-string v3, "Not Set"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    .line 183
    sget v2, Lcom/android/mms/ui/MessageSmscActivityDS;->multiSimNum:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 184
    const-string v2, "pref_key_manage_smsc_address_sim2"

    const-string v3, "Not Set"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    .line 185
    sget-boolean v2, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive1:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive2:Z

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    sget-object v3, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    sget-boolean v2, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive1:Z

    if-eqz v2, :cond_3

    .line 192
    iget-object v2, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 193
    sget-object v2, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 194
    iget-object v2, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    sget-object v3, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    sget-object v3, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 202
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 203
    sget-object v2, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 204
    iget-object v2, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    sget-object v3, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 206
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    sget-object v3, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 213
    :cond_5
    sget-object v2, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    sget-object v3, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v2, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method private final UpdateSmsc()V
    .locals 18

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    .line 224
    .local v17, text:Ljava/lang/CharSequence;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 225
    .local v16, smsc_addr:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 226
    .local v15, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 228
    .local v14, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Mms/MessageSmscActivityDS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(UpdateSmsc)simActive1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive1:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simActive2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive2:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :try_start_0
    sget v1, Lcom/android/mms/ui/MessageSmscActivityDS;->multiSimNum:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_5

    .line 232
    const-string v1, "+"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 237
    :goto_0
    const-string v1, "-"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    const v1, 0x7f0a012c

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_0
    :goto_1
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 359
    return-void

    .line 235
    :cond_1
    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v13

    .line 356
    .local v13, e:Ljava/lang/NumberFormatException;
    const v1, 0x7f0a012c

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 239
    .end local v13           #e:Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3

    const-string v1, "+"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 240
    const v1, 0x7f0a012c

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 242
    :cond_3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 243
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "smsc"

    move-object/from16 v0, v16

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageSmscActivityDS;->SMSC_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 246
    .local v11, bResult:I
    const/4 v1, 0x1

    if-ne v11, v1, :cond_4

    .line 247
    const-string v1, "pref_key_manage_smsc_address"

    move-object/from16 v0, v16

    invoke-interface {v14, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 251
    :cond_4
    const v1, 0x7f0a012d

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 255
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v11           #bResult:I
    :cond_5
    sget v1, Lcom/android/mms/ui/MessageSmscActivityDS;->multiSimNum:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_13

    sget-boolean v1, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive1:Z

    if-eqz v1, :cond_13

    sget-boolean v1, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive2:Z

    if-eqz v1, :cond_13

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIM1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    .line 259
    const-string v1, "Mms/MessageSmscActivityDS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateSmsc Tab1 SIM1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_2
    sget-object v1, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 267
    sget-object v1, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 273
    :goto_3
    sget-object v1, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 274
    sget-object v1, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 279
    :goto_4
    sget-object v1, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 280
    :cond_6
    const v1, 0x7f0a012c

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 262
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    .line 263
    const-string v1, "Mms/MessageSmscActivityDS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateSmsc Tab2 SIM2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 269
    :cond_8
    sget-object v1, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    goto :goto_3

    .line 276
    :cond_9
    sget-object v1, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    goto :goto_4

    .line 281
    :cond_a
    sget-object v1, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_b

    sget-object v1, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    sget-object v1, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_d

    sget-object v1, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 282
    :cond_c
    const v1, 0x7f0a012c

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 284
    :cond_d
    const/4 v11, -0x1

    .restart local v11       #bResult:I
    const/4 v12, -0x1

    .line 285
    .local v12, bResult2:I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 286
    .restart local v4       #values:Landroid/content/ContentValues;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 287
    .local v8, values2:Landroid/content/ContentValues;
    const-string v1, "smsc"

    sget-object v2, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "smsc"

    sget-object v2, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageSmscActivityDS;->SMSC_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/MessageSmscActivityDS;->SMSC_URI2:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 293
    const-string v1, "Mms/MessageSmscActivityDS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateSmsc SIM1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v1, "Mms/MessageSmscActivityDS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateSmsc SIM2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v1, 0x1

    if-ne v11, v1, :cond_e

    const/4 v1, 0x1

    if-ne v12, v1, :cond_e

    .line 296
    const-string v1, "pref_key_manage_smsc_address"

    sget-object v2, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-interface {v14, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 297
    const-string v1, "pref_key_manage_smsc_address_sim2"

    sget-object v2, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-interface {v14, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 298
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 301
    :cond_e
    const/4 v1, 0x1

    if-ne v11, v1, :cond_11

    .line 302
    const-string v1, "pref_key_manage_smsc_address"

    sget-object v2, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    invoke-interface {v14, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    :cond_f
    :goto_5
    const/4 v1, 0x1

    if-ne v11, v1, :cond_10

    const/4 v1, 0x1

    if-eq v12, v1, :cond_12

    .line 310
    :cond_10
    const v1, 0x7f0a012d

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 305
    :cond_11
    const/4 v1, 0x1

    if-ne v12, v1, :cond_f

    .line 306
    const-string v1, "pref_key_manage_smsc_address_sim2"

    sget-object v2, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-interface {v14, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_5

    .line 313
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 318
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v8           #values2:Landroid/content/ContentValues;
    .end local v11           #bResult:I
    .end local v12           #bResult2:I
    :cond_13
    sget v1, Lcom/android/mms/ui/MessageSmscActivityDS;->multiSimNum:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sget-boolean v1, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive1:Z

    if-eqz v1, :cond_14

    sget-boolean v1, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive2:Z

    if-nez v1, :cond_0

    .line 319
    :cond_14
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 320
    .restart local v4       #values:Landroid/content/ContentValues;
    const-string v1, "smsc"

    move-object/from16 v0, v16

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "+"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 322
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 326
    :goto_6
    const-string v1, "-"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 327
    const v1, 0x7f0a012c

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 331
    :cond_15
    :goto_7
    sget-boolean v1, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive1:Z

    if-eqz v1, :cond_19

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageSmscActivityDS;->SMSC_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 334
    .restart local v11       #bResult:I
    const/4 v1, 0x1

    if-ne v11, v1, :cond_18

    .line 335
    const-string v1, "pref_key_manage_smsc_address"

    move-object/from16 v0, v16

    invoke-interface {v14, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 336
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 324
    .end local v11           #bResult:I
    :cond_16
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    goto :goto_6

    .line 328
    :cond_17
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_15

    const-string v1, "+"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 329
    const v1, 0x7f0a012c

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 339
    .restart local v11       #bResult:I
    :cond_18
    const v1, 0x7f0a012d

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 342
    .end local v11           #bResult:I
    :cond_19
    sget-boolean v1, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive2:Z

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageSmscActivityDS;->SMSC_URI2:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 345
    .restart local v11       #bResult:I
    const/4 v1, 0x1

    if-ne v11, v1, :cond_1a

    .line 346
    const-string v1, "pref_key_manage_smsc_address_sim2"

    move-object/from16 v0, v16

    invoke-interface {v14, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 347
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 350
    :cond_1a
    const v1, 0x7f0a012d

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageSmscActivityDS;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-object p0, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageSmscActivityDS;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-object p0, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageSmscActivityDS;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSmscActivityDS;->UpdateSmsc()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageSmscActivityDS;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSmscActivityDS;->cancel()V

    return-void
.end method

.method private final cancel()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 175
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const v9, 0x7f0e0224

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 89
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v4

    sput-boolean v4, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive1:Z

    .line 93
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v4

    sput-boolean v4, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive2:Z

    .line 94
    const-string v4, "Mms/MessageSmscActivityDS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(onCreate)simActive1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive1:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simActive2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive2:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget v4, Lcom/android/mms/ui/MessageSmscActivityDS;->multiSimNum:I

    if-le v4, v8, :cond_1

    sget-boolean v4, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive1:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive2:Z

    if-nez v4, :cond_2

    .line 97
    :cond_1
    const v4, 0x7f03008c

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 98
    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    .line 99
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSmscActivityDS;->LoadInitData()V

    .line 140
    :goto_0
    const v4, 0x7f0e0087

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 141
    .local v3, mSaveButton:Landroid/widget/Button;
    const v4, 0x7f0a011d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 142
    const v4, 0x7f0e0086

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 143
    .local v2, mCancelButton:Landroid/widget/Button;
    const v4, 0x7f0a006b

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 145
    new-instance v4, Lcom/android/mms/ui/MessageSmscActivityDS$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessageSmscActivityDS$2;-><init>(Lcom/android/mms/ui/MessageSmscActivityDS;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v4, Lcom/android/mms/ui/MessageSmscActivityDS$3;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessageSmscActivityDS$3;-><init>(Lcom/android/mms/ui/MessageSmscActivityDS;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void

    .line 103
    .end local v2           #mCancelButton:Landroid/widget/Button;
    .end local v3           #mSaveButton:Landroid/widget/Button;
    :cond_2
    const v4, 0x7f03008d

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 104
    const v4, 0x7f0e020c

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    .line 105
    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    .line 106
    invoke-direct {p0}, Lcom/android/mms/ui/MessageSmscActivityDS;->LoadInitData()V

    .line 108
    iget-object v4, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    const-string v5, "SIM1"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-static {p0, v7}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {p0, v7, v8}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    .line 109
    iget-object v4, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    const-string v5, "SIM2"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-static {p0, v8}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {p0, v8, v8}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    .line 110
    iget-object v4, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    new-instance v5, Lcom/android/mms/ui/MessageSmscActivityDS$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MessageSmscActivityDS$1;-><init>(Lcom/android/mms/ui/MessageSmscActivityDS;)V

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 128
    iget-object v4, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    if-eqz v4, :cond_3

    .line 129
    iget-object v4, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    sget-object v5, Lcom/android/mms/ui/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v4, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 132
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    const-string v5, "SIM1"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 133
    iget-object v4, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 134
    new-instance v1, Lcom/android/mms/ui/MessageSmscActivityDS$TabFactory;

    invoke-direct {v1, p0, p0}, Lcom/android/mms/ui/MessageSmscActivityDS$TabFactory;-><init>(Lcom/android/mms/ui/MessageSmscActivityDS;Landroid/content/Context;)V

    .line 135
    .local v1, factory:Lcom/android/mms/ui/MessageSmscActivityDS$TabFactory;
    iget-object v4, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v5, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 136
    iget-object v4, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v5, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 380
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 387
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 384
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 385
    const/4 v0, 0x1

    goto :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 363
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 365
    sget v3, Lcom/android/mms/ui/MessageSmscActivityDS;->multiSimNum:I

    if-le v3, v5, :cond_0

    sget-boolean v3, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive1:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/mms/ui/MessageSmscActivityDS;->simActive2:Z

    if-eqz v3, :cond_0

    .line 367
    const/4 v2, 0x0

    .local v2, simSlotNum:I
    :goto_0
    sget v3, Lcom/android/mms/ui/MessageSmscActivityDS;->multiSimNum:I

    if-ge v2, v3, :cond_0

    .line 368
    iget-object v3, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 369
    .local v0, simIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p0, v2, v5}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    iget-object v3, p0, Lcom/android/mms/ui/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 372
    .local v1, simName:Landroid/widget/TextView;
    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    .end local v0           #simIcon:Landroid/widget/ImageView;
    .end local v1           #simName:Landroid/widget/TextView;
    .end local v2           #simSlotNum:I
    :cond_0
    return-void
.end method
