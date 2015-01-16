.class public Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;
.super Ljava/lang/Object;
.source "KiesCSCDefaultFeature.java"


# static fields
.field public static final Bool_NoTag:Z = false

.field private static final FEATURE_XML:Ljava/lang/String; = "/system/etc/kies/Kies_Default_Feature.xml"

.field public static final Int_NoTag:I = 0x0

.field public static final Str_NoTag:Ljava/lang/String; = ""

.field private static sInstance:Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;


# instance fields
.field private mFeatureList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;->sInstance:Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;->mFeatureList:Ljava/util/Hashtable;

    .line 48
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;->loadFeatureFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;->sInstance:Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;

    invoke-direct {v0}, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;-><init>()V

    sput-object v0, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;->sInstance:Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;

    .line 64
    :cond_0
    sget-object v0, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;->sInstance:Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;

    return-object v0
.end method

.method private loadFeatureFile()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 111
    const/4 v8, 0x0

    .line 112
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    .line 113
    .local v6, fi:Ljava/io/InputStream;
    const/4 v3, -0x1

    .line 114
    .local v3, eventType:I
    const/4 v0, 0x0

    .line 115
    .local v0, TagName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 117
    .local v1, TagValue:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 118
    .local v5, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 119
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 120
    new-instance v7, Ljava/io/FileInputStream;

    const-string v9, "/system/etc/kies/Kies_Default_Feature.xml"

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a

    .line 121
    .end local v6           #fi:Ljava/io/InputStream;
    .local v7, fi:Ljava/io/InputStream;
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v8, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 122
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 123
    iget-object v9, p0, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->clear()V

    .line 125
    :goto_0
    if-eq v3, v10, :cond_5

    .line 126
    const/4 v9, 0x2

    if-ne v3, v9, :cond_1

    .line 127
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 150
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v3

    goto :goto_0

    .line 129
    :cond_1
    const/4 v9, 0x4

    if-ne v3, v9, :cond_0

    .line 130
    :try_start_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 132
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 133
    iget-object v9, p0, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v9, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v9

    if-eqz v9, :cond_3

    .line 135
    :try_start_4
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    goto :goto_0

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 162
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    move-object v6, v7

    .line 163
    .end local v5           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7           #fi:Ljava/io/InputStream;
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6       #fi:Ljava/io/InputStream;
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 168
    if-eqz v6, :cond_2

    .line 169
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 170
    const/4 v6, 0x0

    .line 176
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_3
    return-void

    .line 142
    .end local v6           #fi:Ljava/io/InputStream;
    .restart local v5       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7       #fi:Ljava/io/InputStream;
    :cond_3
    :try_start_8
    iget-object v9, p0, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v9, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 143
    :catch_2
    move-exception v4

    .line 144
    .local v4, ex:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    .line 164
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    move-object v6, v7

    .line 165
    .end local v5           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7           #fi:Ljava/io/InputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v6       #fi:Ljava/io/InputStream;
    :goto_4
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 168
    if-eqz v6, :cond_2

    .line 169
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 170
    const/4 v6, 0x0

    goto :goto_3

    .line 151
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v6           #fi:Ljava/io/InputStream;
    .restart local v5       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7       #fi:Ljava/io/InputStream;
    :catch_4
    move-exception v2

    .line 152
    .local v2, e:Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_0

    .line 167
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    move-object v6, v7

    .line 168
    .end local v5           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7           #fi:Ljava/io/InputStream;
    .restart local v6       #fi:Ljava/io/InputStream;
    :goto_5
    if-eqz v6, :cond_4

    .line 169
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 170
    const/4 v6, 0x0

    .line 174
    :cond_4
    :goto_6
    throw v9

    .line 157
    .end local v6           #fi:Ljava/io/InputStream;
    .restart local v5       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7       #fi:Ljava/io/InputStream;
    :cond_5
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3

    .line 168
    :goto_7
    if-eqz v7, :cond_6

    .line 169
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 170
    const/4 v6, 0x0

    .end local v7           #fi:Ljava/io/InputStream;
    .restart local v6       #fi:Ljava/io/InputStream;
    goto :goto_3

    .line 158
    .end local v6           #fi:Ljava/io/InputStream;
    .restart local v7       #fi:Ljava/io/InputStream;
    :catch_5
    move-exception v2

    .line 159
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_3

    goto :goto_7

    .line 172
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 173
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v6, v7

    .line 175
    .end local v7           #fi:Ljava/io/InputStream;
    .restart local v6       #fi:Ljava/io/InputStream;
    goto :goto_3

    .line 172
    .end local v5           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7
    move-exception v2

    .line 173
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 172
    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v2

    .line 173
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 172
    .end local v2           #e:Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 173
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 167
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    goto :goto_5

    .line 164
    :catch_a
    move-exception v2

    goto :goto_4

    .line 162
    :catch_b
    move-exception v2

    goto :goto_2

    .end local v6           #fi:Ljava/io/InputStream;
    .restart local v5       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7       #fi:Ljava/io/InputStream;
    :cond_6
    move-object v6, v7

    .end local v7           #fi:Ljava/io/InputStream;
    .restart local v6       #fi:Ljava/io/InputStream;
    goto :goto_3
.end method


# virtual methods
.method public getEnableStatus(Ljava/lang/String;)Z
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 76
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 73
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 76
    goto :goto_0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, -0x1

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 104
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 101
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 104
    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tag"

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/sec/android/kies_feature/KiesCSCDefaultFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    :goto_0
    return-object v1

    .line 87
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method
