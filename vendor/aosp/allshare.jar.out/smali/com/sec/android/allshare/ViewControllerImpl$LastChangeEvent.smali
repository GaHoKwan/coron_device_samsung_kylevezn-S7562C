.class Lcom/sec/android/allshare/ViewControllerImpl$LastChangeEvent;
.super Ljava/lang/Object;
.source "ViewControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ViewControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LastChangeEvent"
.end annotation


# instance fields
.field private mEventID:Ljava/lang/String;

.field private mPowerOff:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/allshare/ViewControllerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/ViewControllerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/sec/android/allshare/ViewControllerImpl$LastChangeEvent;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clean()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 788
    iput-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$LastChangeEvent;->mEventID:Ljava/lang/String;

    .line 790
    iput-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$LastChangeEvent;->mPowerOff:Ljava/lang/String;

    .line 792
    return-void
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 795
    if-eqz p1, :cond_0

    .line 796
    const-string v0, "EventID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    iput-object p2, p0, Lcom/sec/android/allshare/ViewControllerImpl$LastChangeEvent;->mEventID:Ljava/lang/String;

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    const-string v0, "PowerOFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iput-object p2, p0, Lcom/sec/android/allshare/ViewControllerImpl$LastChangeEvent;->mPowerOff:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getEventID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$LastChangeEvent;->mEventID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$LastChangeEvent;->mEventID:Ljava/lang/String;

    .line 808
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getPowerOff()Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$LastChangeEvent;->mPowerOff:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/sec/android/allshare/ViewControllerImpl$LastChangeEvent;->mPowerOff:Ljava/lang/String;

    .line 815
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public parseFromXML(Ljava/lang/String;)V
    .locals 5
    .parameter "xml"

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/sec/android/allshare/ViewControllerImpl$LastChangeEvent;->clean()V

    .line 821
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 824
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    .line 825
    .local v1, key:Ljava/lang/String;
    const/4 v3, 0x0

    .line 827
    .local v3, value:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 828
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 830
    .local v0, eventType:I
    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    .line 831
    packed-switch v0, :pswitch_data_0

    .line 850
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 836
    :pswitch_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 837
    goto :goto_1

    .line 840
    :pswitch_2
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 841
    invoke-direct {p0, v1, v3}, Lcom/sec/android/allshare/ViewControllerImpl$LastChangeEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 852
    .end local v0           #eventType:I
    :catch_0
    move-exception v4

    .line 856
    :cond_1
    :goto_2
    return-void

    .line 846
    .restart local v0       #eventType:I
    :pswitch_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 854
    .end local v0           #eventType:I
    :catch_1
    move-exception v4

    goto :goto_2

    .line 853
    :catch_2
    move-exception v4

    goto :goto_2

    .line 831
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
