.class public Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
.super Ljava/lang/Object;
.source "InteractionContactDatas.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field includingPrimaryContact:Z

.field public mAccountType:Ljava/lang/String;

.field private mActionCode:I

.field public mAvailableDataCount:I

.field public mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayName:Ljava/lang/String;

.field public mDisplayNameAlt:Ljava/lang/String;

.field public mPartition:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field singleData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$1;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V
    .locals 1
    .parameter "cursor"
    .parameter "partition"
    .parameter "uri"
    .parameter "flag"
    .parameter "ActionCode"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    .line 99
    iput p5, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mActionCode:I

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    .line 102
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    .line 104
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    .line 105
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAccountType:Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->setPrimaryContact(Landroid/database/Cursor;)V

    .line 107
    invoke-direct {p0, p1, p4}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->makeDataSet(Landroid/database/Cursor;Z)V

    .line 110
    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mPartition:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "src"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mActionCode:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .local v1, dataSetSize:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    .line 75
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 76
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)V

    .line 77
    .local v0, dataInfo:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayNameAlt:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataType:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->typeString:Ljava/lang/String;

    .line 85
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v0           #dataInfo:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAccountType:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mPartition:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->singleData:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->includingPrimaryContact:Z

    .line 96
    return-void

    :cond_1
    move v3, v5

    .line 94
    goto :goto_1

    :cond_2
    move v4, v5

    .line 95
    goto :goto_2
.end method

.method private makeDataSet(Landroid/database/Cursor;Z)V
    .locals 3
    .parameter "cursor"
    .parameter "flag"

    .prologue
    const/4 v2, 0x1

    .line 139
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->move(I)Z

    .line 140
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->singleData:Z

    if-eqz v1, :cond_1

    .line 142
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->saveDataType(Landroid/database/Cursor;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->includingPrimaryContact:Z

    if-eqz v1, :cond_3

    .line 146
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 147
    .local v0, primary:I
    if-lez v0, :cond_0

    .line 148
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->saveDataType(Landroid/database/Cursor;)V

    .line 149
    if-ne p2, v2, :cond_0

    .line 159
    .end local v0           #primary:I
    :cond_2
    :goto_1
    return-void

    .line 153
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->saveDataType(Landroid/database/Cursor;)V

    .line 154
    if-ne p2, v2, :cond_0

    goto :goto_1
.end method

.method private saveData(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 197
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)V

    .line 198
    .local v0, dataInfo:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    .line 199
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    .line 200
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayNameAlt:Ljava/lang/String;

    .line 201
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    .line 202
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    .line 203
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    .line 204
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataType:I

    .line 205
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->typeString:Ljava/lang/String;

    .line 207
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->rawContactId:Ljava/lang/String;

    .line 209
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    .line 215
    :cond_0
    return-void
.end method

.method private saveDataType(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/16 v2, 0x9

    .line 162
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mActionCode:I

    sparse-switch v0, :sswitch_data_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 165
    :sswitch_0
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_0

    .line 173
    :sswitch_1
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_0

    .line 179
    :sswitch_2
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_0

    .line 187
    :sswitch_3
    const-string v0, "vnd.chaton.item/vnd.com.chaton.profile"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_0

    .line 162
    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_2
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_1
        0xbe -> :sswitch_1
        0x118 -> :sswitch_0
        0x122 -> :sswitch_1
        0x125 -> :sswitch_3
    .end sparse-switch
.end method

.method private setPrimaryContact(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, addData:I
    const/4 v2, 0x0

    .line 117
    .local v2, primary:I
    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->move(I)Z

    .line 118
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-le v3, v5, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->singleData:Z

    .line 119
    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    const/16 v3, 0x8

    :try_start_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 126
    if-lez v2, :cond_0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v3, v5

    .line 118
    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Ljava/lang/NumberFormatException;
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->includingPrimaryContact:Z

    .line 136
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    :goto_2
    return-void

    .line 130
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    if-nez v0, :cond_4

    .line 132
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->includingPrimaryContact:Z

    goto :goto_2

    .line 133
    :cond_4
    if-lt v0, v5, :cond_2

    .line 134
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->includingPrimaryContact:Z

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flag"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 225
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mActionCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayNameAlt:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->typeString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mPartition:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 242
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->singleData:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->includingPrimaryContact:Z

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    return-void

    :cond_1
    move v1, v3

    .line 243
    goto :goto_1

    :cond_2
    move v2, v3

    .line 244
    goto :goto_2
.end method
