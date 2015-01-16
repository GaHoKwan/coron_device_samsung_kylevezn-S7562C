.class Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;
.super Ljava/lang/Object;
.source "TVControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/TVControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LastChangeEvent"
.end annotation


# instance fields
.field private mEventID:Ljava/lang/String;

.field private mPowerOff:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/allshare/TVControllerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/TVControllerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1648
    iput-object p1, p0, Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;->this$0:Lcom/sec/android/allshare/TVControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clean()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1654
    iput-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;->mEventID:Ljava/lang/String;

    .line 1656
    iput-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;->mPowerOff:Ljava/lang/String;

    .line 1658
    return-void
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1661
    if-eqz p1, :cond_0

    .line 1662
    const-string v0, "EventID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1663
    iput-object p2, p0, Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;->mEventID:Ljava/lang/String;

    .line 1668
    :cond_0
    :goto_0
    return-void

    .line 1664
    :cond_1
    const-string v0, "PowerOFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    iput-object p2, p0, Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;->mPowerOff:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getEventID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;->mEventID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1672
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;->mEventID:Ljava/lang/String;

    .line 1674
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getPowerOff()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;->mPowerOff:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, p0, Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;->mPowerOff:Ljava/lang/String;

    .line 1681
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public parseFromXML(Ljava/lang/String;)V
    .locals 6
    .parameter "xml"

    .prologue
    .line 1685
    invoke-direct {p0}, Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;->clean()V

    .line 1687
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1690
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 1691
    .local v2, key:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1693
    .local v4, value:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1694
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1696
    .local v1, eventType:I
    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    .line 1697
    packed-switch v1, :pswitch_data_0

    .line 1716
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1702
    :pswitch_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1703
    goto :goto_1

    .line 1706
    :pswitch_2
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 1707
    invoke-direct {p0, v2, v4}, Lcom/sec/android/allshare/TVControllerImpl$LastChangeEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 1718
    .end local v1           #eventType:I
    :catch_0
    move-exception v0

    .line 1719
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1726
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    return-void

    .line 1712
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

    .line 1720
    .end local v1           #eventType:I
    :catch_1
    move-exception v0

    .line 1721
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 1722
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1723
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 1697
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
