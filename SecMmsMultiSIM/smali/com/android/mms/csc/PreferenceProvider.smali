.class public Lcom/android/mms/csc/PreferenceProvider;
.super Landroid/content/ContentProvider;
.source "PreferenceProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.mms.csc.PreferenceProvider"

.field public static final PREFERENCE_ALL_LIST:I = 0x190

.field private static final PREF_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "PreferenceProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private sPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/mms/csc/PreferenceProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 56
    sget-object v0, Lcom/android/mms/csc/PreferenceProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.mms.csc.PreferenceProvider"

    const-string v2, "listall"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/csc/PreferenceProvider;->PREF_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/csc/PreferenceProvider;->sPrefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadPreference()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, context:Landroid/content/Context;
    new-instance v4, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/mms/csc/PreferenceProvider;->PREF_COLUMNS:[Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 111
    .local v4, prefCursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.mms"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 112
    const-string v5, "com.android.mms_preferences"

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/csc/PreferenceProvider;->sPrefs:Landroid/content/SharedPreferences;

    .line 114
    iget-object v5, p0, Lcom/android/mms/csc/PreferenceProvider;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 116
    .local v3, prefAll:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v5, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 117
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    aget-object v7, v7, v2

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v2           #i:I
    .end local v3           #prefAll:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    :catch_0
    move-exception v1

    .line 122
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    .line 125
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #prefCursor:Landroid/database/MatrixCursor;
    :cond_0
    return-object v4
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, cursor:Landroid/database/Cursor;
    sget-object v1, Lcom/android/mms/csc/PreferenceProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 100
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized URI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/csc/PreferenceProvider;->loadPreference()Landroid/database/Cursor;

    move-result-object v0

    .line 103
    return-object v0

    .line 94
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method
