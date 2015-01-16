.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 57
    return-void
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    const v1, 0x10900a0

    .line 93
    .local v1, itemLayout:I
    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v2, 0x122

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const v1, 0x1090119

    .line 101
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    :cond_1
    :goto_0
    const v2, 0x1020190

    invoke-static {p0, v1, v2}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    return-object v2

    .line 98
    :catch_0
    move-exception v2

    .line 101
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    throw v2
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 27
    .parameter "context"
    .parameter "layoutId"
    .parameter "fieldId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 109
    .local v21, resources:Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v16

    .line 110
    .local v16, locales:[Ljava/lang/String;
    const v25, 0x1070009

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 111
    .local v23, specialLocaleCodes:[Ljava/lang/String;
    const v25, 0x107000a

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    .line 112
    .local v24, specialLocaleNames:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 113
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    .line 114
    .local v19, origSize:I
    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v20, v0

    .line 115
    .local v20, preprocess:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v9, 0x0

    .line 117
    .local v9, finalSize:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_Framework_ReplaceCountryName"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, countryFeature:Ljava/lang/String;
    const-string v4, ""

    .line 119
    .local v4, ISO_Code:Ljava/lang/String;
    const-string v7, ""

    .line 121
    .local v7, coutryReplaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 122
    const/16 v25, 0x0

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 123
    const/16 v25, 0x6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 126
    :cond_0
    const/4 v11, 0x0

    .local v11, i:I
    move v10, v9

    .end local v9           #finalSize:I
    .local v10, finalSize:I
    :goto_0
    move/from16 v0, v19

    if-ge v11, v0, :cond_7

    .line 127
    aget-object v22, v16, v11

    .line 128
    .local v22, s:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v14

    .line 129
    .local v14, len:I
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v14, v0, :cond_9

    .line 130
    const/16 v25, 0x0

    const/16 v26, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 131
    .local v13, language:Ljava/lang/String;
    const/16 v25, 0x3

    const/16 v26, 0x5

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, country:Ljava/lang/String;
    new-instance v12, Ljava/util/Locale;

    invoke-direct {v12, v13, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v12, l:Ljava/util/Locale;
    if-nez v10, :cond_1

    .line 138
    add-int/lit8 v9, v10, 0x1

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    new-instance v25, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v12}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v25, v20, v10

    .line 126
    .end local v5           #country:Ljava/lang/String;
    .end local v12           #l:Ljava/util/Locale;
    .end local v13           #language:Ljava/lang/String;
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move v10, v9

    .end local v9           #finalSize:I
    .restart local v10       #finalSize:I
    goto :goto_0

    .line 145
    .restart local v5       #country:Ljava/lang/String;
    .restart local v12       #l:Ljava/util/Locale;
    .restart local v13       #language:Ljava/lang/String;
    :cond_1
    add-int/lit8 v25, v10, -0x1

    aget-object v25, v20, v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 153
    add-int/lit8 v25, v10, -0x1

    aget-object v25, v20, v25

    add-int/lit8 v26, v10, -0x1

    aget-object v26, v20, v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 160
    add-int/lit8 v9, v10, 0x1

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    new-instance v25, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v12, v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v12}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v25, v20, v10

    goto :goto_1

    .line 167
    .end local v9           #finalSize:I
    .restart local v10       #finalSize:I
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 168
    const-string v18, ""

    .line 169
    .local v18, numeric:Ljava/lang/String;
    const-string v17, ""

    .line 171
    .local v17, mcc:Ljava/lang/String;
    const-string v25, "gsm.sim.operator.numeric"

    const-string/jumbo v26, "none"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 173
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 175
    const/16 v25, 0x0

    const/16 v26, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 177
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_3

    const-string v25, "202"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 178
    move-object v8, v7

    .line 193
    .end local v17           #mcc:Ljava/lang/String;
    .end local v18           #numeric:Ljava/lang/String;
    .local v8, displayName:Ljava/lang/String;
    :goto_2
    add-int/lit8 v9, v10, 0x1

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    new-instance v25, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v25

    invoke-direct {v0, v8, v12}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v25, v20, v10

    goto/16 :goto_1

    .line 180
    .end local v8           #displayName:Ljava/lang/String;
    .end local v9           #finalSize:I
    .restart local v10       #finalSize:I
    .restart local v17       #mcc:Ljava/lang/String;
    .restart local v18       #numeric:Ljava/lang/String;
    :cond_3
    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 183
    .end local v8           #displayName:Ljava/lang/String;
    :cond_4
    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 185
    .end local v8           #displayName:Ljava/lang/String;
    .end local v17           #mcc:Ljava/lang/String;
    .end local v18           #numeric:Ljava/lang/String;
    :cond_5
    const-string/jumbo v25, "zz_ZZ"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 186
    const-string v8, "Pseudo..."

    .restart local v8       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 188
    .end local v8           #displayName:Ljava/lang/String;
    :cond_6
    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 199
    .end local v5           #country:Ljava/lang/String;
    .end local v8           #displayName:Ljava/lang/String;
    .end local v12           #l:Ljava/util/Locale;
    .end local v13           #language:Ljava/lang/String;
    .end local v14           #len:I
    .end local v22           #s:Ljava/lang/String;
    :cond_7
    new-array v15, v10, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 200
    .local v15, localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_8

    .line 201
    aget-object v25, v20, v11

    aput-object v25, v15, v11

    .line 200
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 203
    :cond_8
    invoke-static {v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 204
    new-instance v25, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v15}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-object v25

    .end local v15           #localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .restart local v14       #len:I
    .restart local v22       #s:Ljava/lang/String;
    :cond_9
    move v9, v10

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    goto/16 :goto_1
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "l"
    .parameter "specialLocaleCodes"
    .parameter "specialLocaleNames"

    .prologue
    .line 217
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 220
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    aget-object v2, p2, v1

    .line 225
    :goto_1
    return-object v2

    .line 219
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 208
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    .line 265
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 266
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 268
    .local v1, config:Landroid/content/res/Configuration;
    iput-object p0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 271
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 273
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 275
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 232
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 233
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 255
    .local v0, locale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 257
    .end local v0           #locale:Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 243
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 237
    return-void
.end method
