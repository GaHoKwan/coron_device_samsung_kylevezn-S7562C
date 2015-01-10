.class public Lcom/samsung/mms/location/Place;
.super Ljava/lang/Object;
.source "Place.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PHONE_TYPE_HOME:I = 0x2

.field public static final PHONE_TYPE_MOBILE:I = 0x0

.field public static final PHONE_TYPE_OTHER:I = 0x3

.field public static final PHONE_TYPE_WORK:I = 0x1


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D

.field private mName:Ljava/lang/String;

.field private mPhoneNumbers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPin:Ljava/lang/String;

.field private mState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter
    .parameter "latitude"
    .parameter "longitude"
    .parameter "address"
    .parameter "city"
    .parameter "state"
    .parameter "country"
    .parameter "pin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;DD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, phoneNumbers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/samsung/mms/location/Place;->mName:Ljava/lang/String;

    .line 34
    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    .end local p2           #phoneNumbers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/samsung/mms/location/Place;->mPhoneNumbers:Ljava/util/HashMap;

    .line 35
    iput-wide p3, p0, Lcom/samsung/mms/location/Place;->mLatitude:D

    .line 36
    iput-wide p5, p0, Lcom/samsung/mms/location/Place;->mLongitude:D

    .line 37
    if-nez p7, :cond_2

    const-string p7, ""

    .end local p7
    :cond_2
    iput-object p7, p0, Lcom/samsung/mms/location/Place;->mAddress:Ljava/lang/String;

    .line 38
    if-nez p8, :cond_3

    const-string p8, ""

    .end local p8
    :cond_3
    iput-object p8, p0, Lcom/samsung/mms/location/Place;->mCity:Ljava/lang/String;

    .line 39
    if-nez p9, :cond_4

    const-string p9, ""

    .end local p9
    :cond_4
    iput-object p9, p0, Lcom/samsung/mms/location/Place;->mState:Ljava/lang/String;

    .line 40
    if-nez p10, :cond_5

    const-string p10, ""

    .end local p10
    :cond_5
    iput-object p10, p0, Lcom/samsung/mms/location/Place;->mCountry:Ljava/lang/String;

    .line 41
    if-nez p11, :cond_6

    const-string p11, ""

    .end local p11
    :cond_6
    iput-object p11, p0, Lcom/samsung/mms/location/Place;->mPin:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static createPlace([B)Lcom/samsung/mms/location/Place;
    .locals 9
    .parameter "placeBytes"

    .prologue
    const/4 v6, 0x0

    .line 46
    const/4 v4, 0x0

    .line 49
    .local v4, localPlace:Lcom/samsung/mms/location/Place;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    .local v3, localObjectInputStream:Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/mms/location/Place;

    move-object v4, v0

    .line 51
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v4

    .line 62
    .end local v3           #localObjectInputStream:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v5

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, localIOException1:Ljava/io/IOException;
    const-string v5, "Place"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createPlace() - the bytes were invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 55
    goto :goto_0

    .line 57
    .end local v2           #localIOException1:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 58
    .local v1, localClassNotFoundException1:Ljava/lang/ClassNotFoundException;
    const-string v5, "Place"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createPlace() - the bytes were invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 59
    goto :goto_0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/mms/location/Place;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/mms/location/Place;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/mms/location/Place;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/samsung/mms/location/Place;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/samsung/mms/location/Place;->mLongitude:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/mms/location/Place;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumbers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/mms/location/Place;->mPhoneNumbers:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/mms/location/Place;->mPin:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/mms/location/Place;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public toByteArray()[B
    .locals 7

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 115
    .local v0, localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0           #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .local v1, localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 117
    .local v3, localObjectOutputStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object v0, v1

    .end local v1           #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .end local v3           #localObjectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v0       #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v4

    .line 120
    :catch_0
    move-exception v2

    .line 121
    .local v2, localIOException1:Ljava/io/IOException;
    :goto_1
    const-string v4, "Place"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toByteArray() - exception thrown when writing to byte array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v4, 0x0

    goto :goto_0

    .line 120
    .end local v0           #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .end local v2           #localIOException1:Ljava/io/IOException;
    .restart local v1       #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #localByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method
