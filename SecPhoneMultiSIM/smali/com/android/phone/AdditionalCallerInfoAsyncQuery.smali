.class public Lcom/android/phone/AdditionalCallerInfoAsyncQuery;
.super Landroid/content/AsyncQueryHandler;
.source "AdditionalCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AdditionalCallerInfoAsyncQuery$1;,
        Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;,
        Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

.field private mContext:Landroid/content/Context;

.field private mQueryState:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 40
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->DBG:Z

    .line 95
    iput-object p1, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mContext:Landroid/content/Context;

    .line 97
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertLunarToSolar(Ljava/util/Calendar;Ljava/lang/String;)[I
    .locals 8
    .parameter "birthday"
    .parameter "infoLunar"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 329
    const/4 v1, 0x0

    .line 331
    .local v1, isLeapMonth:Z
    const-string v3, "1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 335
    :goto_0
    new-instance v0, Lcom/android/phone/SolarLunarConverter;

    invoke-direct {v0}, Lcom/android/phone/SolarLunarConverter;-><init>()V

    .line 336
    .local v0, converter:Lcom/android/phone/SolarLunarConverter;
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/android/phone/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    .line 341
    const/4 v3, 0x3

    new-array v2, v3, [I

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/phone/SolarLunarConverter;->getYear()I

    move-result v4

    aput v4, v2, v3

    invoke-virtual {v0}, Lcom/android/phone/SolarLunarConverter;->getMonth()I

    move-result v3

    aput v3, v2, v6

    invoke-virtual {v0}, Lcom/android/phone/SolarLunarConverter;->getDay()I

    move-result v3

    aput v3, v2, v7

    .line 342
    .end local v0           #converter:Lcom/android/phone/SolarLunarConverter;
    :goto_1
    return-object v2

    .line 332
    :cond_0
    const-string v3, "2"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 333
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 5
    .parameter "auths"
    .parameter "accountType"

    .prologue
    .line 320
    move-object v0, p1

    .local v0, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 321
    .local v1, auth:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    .end local v1           #auth:Landroid/accounts/AuthenticatorDescription;
    :goto_1
    return-object v1

    .line 320
    .restart local v1       #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v1           #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 296
    iget-object v5, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 297
    .local v0, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 298
    .local v2, auths:[Landroid/accounts/AuthenticatorDescription;
    iget-object v5, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-object v5, v5, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 301
    .local v1, auth:Landroid/accounts/AuthenticatorDescription;
    iget-object v5, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 304
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 305
    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 306
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDisplayIcon : iconId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 307
    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget v6, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 311
    :cond_0
    return-object v4
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 346
    const-string v0, "AdditionalCallerInfoAsyncQuery"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method public static startQuery(Landroid/content/Context;JLcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;)V
    .locals 18
    .parameter "context"
    .parameter "contactID"
    .parameter "onQueryCompleteListener"

    .prologue
    .line 102
    new-instance v2, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;-><init>(Landroid/content/Context;)V

    .line 104
    .local v2, c:Lcom/android/phone/AdditionalCallerInfoAsyncQuery;
    new-instance v4, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;

    const/4 v3, 0x0

    invoke-direct {v4, v3}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$1;)V

    .line 105
    .local v4, cw:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;
    move-wide/from16 v0, p1

    iput-wide v0, v4, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;->contactID:J

    .line 106
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 109
    const-string v15, "requesting_package"

    .line 110
    .local v15, REQUESTING_PACKAGE_PARAM_KEY:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v7, "stream_items"

    invoke-virtual {v3, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v7, "requesting_package"

    const-string v8, "com.android.phone"

    invoke-virtual {v3, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 114
    .local v5, uri:Landroid/net/Uri;
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "account_name"

    aput-object v7, v6, v3

    const/4 v3, 0x1

    const-string v7, "account_type"

    aput-object v7, v6, v3

    const/4 v3, 0x2

    const-string v7, "text"

    aput-object v7, v6, v3

    .line 120
    .local v6, CONTACTS_SNS_PROJECTION:[Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "timestamp DESC"

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v17

    .line 126
    .local v17, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "limit"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 128
    .local v10, birthUri:Landroid/net/Uri;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v16, sb:Ljava/lang/StringBuilder;
    const-string v3, "contact_id= \'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\' AND "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v3, "mimetype= \'vnd.android.cursor.item/contact_event\' AND "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v3, "data2= 3"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v3, "support_korea_lunar"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "support_china_lunar"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    :cond_0
    const/4 v8, 0x2

    const/4 v3, 0x2

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "data1"

    aput-object v7, v11, v3

    const/4 v3, 0x1

    const-string v7, "data15"

    aput-object v7, v11, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    move-object v9, v4

    invoke-virtual/range {v7 .. v14}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 138
    :cond_1
    const/4 v8, 0x2

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "data1"

    aput-object v7, v11, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    move-object v9, v4

    invoke-virtual/range {v7 .. v14}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 19
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 155
    const-string v14, "AdditionalCallerInfoAsyncQuery"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onQueryComplete : token = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v6, p2

    .line 158
    check-cast v6, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;

    .line 160
    .local v6, cw:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    if-nez v14, :cond_0

    .line 161
    new-instance v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    invoke-direct {v14}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    .line 163
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 285
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    or-int v14, v14, p1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    .line 287
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    .line 288
    const-string v14, "AdditionalCallerInfoAsyncQuery"

    const-string v15, "onQueryComplete : Query complete!"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 289
    iget-object v14, v6, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v14, :cond_2

    .line 290
    iget-object v14, v6, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    invoke-interface {v14, v15}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;)V

    .line 292
    :cond_2
    return-void

    .line 165
    :pswitch_0
    if-eqz p3, :cond_1

    .line 167
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const-string v15, "account_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountName:Ljava/lang/String;

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const-string v15, "account_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountType:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const-string v15, "text"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    .line 174
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onQueryComplete : Name = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-object v15, v15, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Type = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-object v15, v15, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Status : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-object v15, v15, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    iput-object v15, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mSNSDisplayIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v14

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v14

    .line 187
    :pswitch_1
    const/4 v11, 0x0

    .line 188
    .local v11, today:Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 189
    .local v2, birthday:Ljava/util/Calendar;
    const/4 v10, 0x0

    .line 190
    .local v10, strBirthday:Ljava/lang/String;
    const/4 v8, 0x0

    .line 191
    .local v8, infoLunar:Ljava/lang/String;
    if-eqz p3, :cond_6

    .line 193
    :try_start_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 194
    const-string v14, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 195
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onQueryComplete : birthday = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 196
    const-string v14, "support_korea_lunar"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 197
    const-string v14, "data15"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 198
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onQueryComplete : infoLunar = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 200
    :cond_4
    const-string v14, "support_china_lunar"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 201
    const-string v14, "data15"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 202
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onQueryComplete : infoLunar = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    :cond_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_6
    if-eqz v10, :cond_1

    .line 211
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 212
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 215
    :try_start_2
    const-string v14, "AdditionalCallerInfoAsyncQuery"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onQueryComplete strBirthday: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mContext:Landroid/content/Context;

    invoke-static {v14, v10}, Lcom/android/phone/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 217
    .local v9, parsedBirth:Ljava/lang/String;
    const-string v14, "AdditionalCallerInfoAsyncQuery"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onQueryComplete parsedBirth: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 218
    const-string v14, "support_china_lunar"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 219
    const-string v14, "-"

    const/4 v15, 0x3

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, birthToken:[Ljava/lang/String;
    const-string v14, "1"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 221
    const/4 v14, 0x1

    const/4 v15, 0x0

    aget-object v15, v1, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 225
    :goto_1
    const/4 v14, 0x2

    const/4 v15, 0x1

    aget-object v15, v1, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 226
    const/4 v14, 0x5

    const/4 v15, 0x2

    aget-object v15, v1, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 242
    :goto_2
    const-string v14, "support_china_lunar"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    if-eqz v8, :cond_7

    .line 243
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->convertLunarToSolar(Ljava/util/Calendar;Ljava/lang/String;)[I

    move-result-object v3

    .line 244
    .local v3, birthdaySolar:[I
    if-eqz v3, :cond_7

    const/4 v14, 0x0

    aget v14, v3, v14

    const/4 v15, 0x1

    aget v15, v3, v15

    const/16 v16, 0x2

    aget v16, v3, v16

    move/from16 v0, v16

    invoke-virtual {v2, v14, v15, v0}, Ljava/util/Calendar;->set(III)V

    .line 247
    .end local v3           #birthdaySolar:[I
    :cond_7
    const-string v14, "support_korea_lunar"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    if-eqz v8, :cond_8

    .line 248
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->convertLunarToSolar(Ljava/util/Calendar;Ljava/lang/String;)[I

    move-result-object v3

    .line 249
    .restart local v3       #birthdaySolar:[I
    if-eqz v3, :cond_8

    const/4 v14, 0x0

    aget v14, v3, v14

    const/4 v15, 0x1

    aget v15, v3, v15

    const/16 v16, 0x2

    aget v16, v3, v16

    move/from16 v0, v16

    invoke-virtual {v2, v14, v15, v0}, Ljava/util/Calendar;->set(III)V

    .line 252
    .end local v3           #birthdaySolar:[I
    :cond_8
    invoke-virtual {v11, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v14

    if-lez v14, :cond_9

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    if-ge v14, v15, :cond_9

    .line 254
    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 257
    :cond_9
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 258
    .local v4, birthdayTime:J
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 260
    .local v12, todayTime:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    sub-long v15, v4, v12

    const-wide/32 v17, 0x5265c00

    div-long v15, v15, v17

    iput-wide v15, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    .line 262
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-wide v14, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-wide v14, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v16, 0x7

    cmp-long v14, v14, v16

    if-lez v14, :cond_b

    .line 264
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const-wide/16 v15, -0x1

    iput-wide v15, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    .line 267
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-wide v14, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_c

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mIsBirthDay:Z

    .line 271
    :cond_c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onQueryComplete : mRemainedDaysUntilBirthday = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-wide v15, v15, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " isBirthDay : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-boolean v15, v15, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mIsBirthDay:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 274
    .end local v1           #birthToken:[Ljava/lang/String;
    .end local v4           #birthdayTime:J
    .end local v9           #parsedBirth:Ljava/lang/String;
    .end local v12           #todayTime:J
    :catch_0
    move-exception v7

    .line 275
    .local v7, e:Ljava/lang/Exception;
    const-string v14, "AdditionalCallerInfoAsyncQuery"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onQueryComplete : exception = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 206
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v14

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v14

    .line 223
    .restart local v1       #birthToken:[Ljava/lang/String;
    .restart local v9       #parsedBirth:Ljava/lang/String;
    :cond_d
    const/4 v14, 0x1

    const/4 v15, 0x1

    :try_start_3
    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1

    .line 228
    .end local v1           #birthToken:[Ljava/lang/String;
    :cond_e
    const-string v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 229
    .restart local v1       #birthToken:[Ljava/lang/String;
    array-length v14, v1

    const/4 v15, 0x2

    if-ne v14, v15, :cond_f

    .line 230
    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 231
    const-string v14, "AdditionalCallerInfoAsyncQuery"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "inside if token length is 2-set year as current year and value set is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_3
    const/4 v14, 0x2

    const/4 v15, 0x1

    aget-object v15, v1, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 239
    const/4 v14, 0x5

    const/4 v15, 0x0

    aget-object v15, v1, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_2

    .line 235
    :cond_f
    const/4 v14, 0x1

    const/4 v15, 0x2

    aget-object v15, v1, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 236
    const-string v14, "AdditionalCallerInfoAsyncQuery"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "inside if token length is 3-get the provided year"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v16, v1, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
