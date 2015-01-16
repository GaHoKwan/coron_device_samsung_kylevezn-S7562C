.class public Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;
.super Lcom/sec/android/allshare/control/TVController$TVInformation;
.source "TVControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/TVControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TVInformationImpl"
.end annotation


# instance fields
.field private mIsSupportMouse:Z

.field private mIsSupportWebSharing:Z

.field private mSupportVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/allshare/TVControllerImpl;


# direct methods
.method public constructor <init>(Lcom/sec/android/allshare/TVControllerImpl;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1865
    iput-object p1, p0, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    invoke-direct {p0, p1}, Lcom/sec/android/allshare/control/TVController$TVInformation;-><init>(Lcom/sec/android/allshare/control/TVController;)V

    .line 1859
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;->mSupportVersion:Ljava/lang/String;

    .line 1861
    iput-boolean v1, p0, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;->mIsSupportWebSharing:Z

    .line 1863
    iput-boolean v1, p0, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;->mIsSupportMouse:Z

    .line 1867
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/allshare/TVControllerImpl;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "strXML"

    .prologue
    const/4 v6, 0x0

    .line 1869
    iput-object p1, p0, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    invoke-direct {p0, p1}, Lcom/sec/android/allshare/control/TVController$TVInformation;-><init>(Lcom/sec/android/allshare/control/TVController;)V

    .line 1859
    const-string v5, ""

    iput-object v5, p0, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;->mSupportVersion:Ljava/lang/String;

    .line 1861
    iput-boolean v6, p0, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;->mIsSupportWebSharing:Z

    .line 1863
    iput-boolean v6, p0, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;->mIsSupportMouse:Z

    .line 1870
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1873
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 1874
    .local v2, key:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1876
    .local v4, value:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1877
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1879
    .local v1, eventType:I
    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    .line 1880
    packed-switch v1, :pswitch_data_0

    .line 1899
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1885
    :pswitch_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1886
    goto :goto_1

    .line 1889
    :pswitch_2
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 1890
    invoke-direct {p0, v2, v4}, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 1901
    .end local v1           #eventType:I
    :catch_0
    move-exception v0

    .line 1902
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1908
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    return-void

    .line 1895
    .restart local v1       #eventType:I
    :pswitch_3
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    goto :goto_1

    .line 1903
    .end local v1           #eventType:I
    :catch_1
    move-exception v0

    .line 1904
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 1905
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1906
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 1880
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1911
    if-eqz p1, :cond_0

    .line 1912
    const-string v1, "SupportTVVersion"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1913
    iput-object p2, p0, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;->mSupportVersion:Ljava/lang/String;

    .line 1915
    iget-object v1, p0, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;->mSupportVersion:Ljava/lang/String;

    const-string v2, "2012"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1916
    .local v0, nCompare:I
    if-ltz v0, :cond_0

    .line 1917
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;->mIsSupportWebSharing:Z

    .line 1921
    .end local v0           #nCompare:I
    :cond_0
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;->mSupportVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportMouse()Z
    .locals 1

    .prologue
    .line 1934
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;->mIsSupportMouse:Z

    return v0
.end method

.method public isSupportWebSharing()Z
    .locals 1

    .prologue
    .line 1930
    iget-boolean v0, p0, Lcom/sec/android/allshare/TVControllerImpl$TVInformationImpl;->mIsSupportWebSharing:Z

    return v0
.end method
