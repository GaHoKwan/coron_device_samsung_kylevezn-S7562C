.class public Lcom/android/mms/ui/MessageListAdapter$AvatarCache$ContactData;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter$AvatarCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactData"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mContactId:J

.field private mContactUri:Landroid/net/Uri;

.field private mPhoto:Landroid/graphics/drawable/Drawable;

.field final synthetic this$1:Lcom/android/mms/ui/MessageListAdapter$AvatarCache;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListAdapter$AvatarCache;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "address"

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache$ContactData;->this$1:Lcom/android/mms/ui/MessageListAdapter$AvatarCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    iput-object p2, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache$ContactData;->mAddress:Ljava/lang/String;

    .line 1080
    return-void
.end method

.method private loadDefaultAvatar()V
    .locals 5

    .prologue
    .line 1167
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache$ContactData;->this$1:Lcom/android/mms/ui/MessageListAdapter$AvatarCache;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListAdapter$AvatarCache;->mDefaultAvatarDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 1168
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache$ContactData;->this$1:Lcom/android/mms/ui/MessageListAdapter$AvatarCache;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListAdapter$AvatarCache;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListAdapter;->access$000(Lcom/android/mms/ui/MessageListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1170
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache$ContactData;->this$1:Lcom/android/mms/ui/MessageListAdapter$AvatarCache;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache$ContactData;->this$1:Lcom/android/mms/ui/MessageListAdapter$AvatarCache;

    iget-object v4, v4, Lcom/android/mms/ui/MessageListAdapter$AvatarCache;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/MessageListAdapter;->access$000(Lcom/android/mms/ui/MessageListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, v2, Lcom/android/mms/ui/MessageListAdapter$AvatarCache;->mDefaultAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 1172
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache$ContactData;->this$1:Lcom/android/mms/ui/MessageListAdapter$AvatarCache;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListAdapter$AvatarCache;->mDefaultAvatarDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache$ContactData;->mPhoto:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    :goto_0
    return-void

    .line 1173
    :catch_0
    move-exception v1

    .line 1174
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Mms/MessageListAdapter"

    const-string v3, "loadDefaultAvatar: out of memory: "

    invoke-static {v2, v3, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onPhotoDataLoaded(Landroid/database/Cursor;)Z
    .locals 7
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 1113
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1122
    :cond_0
    :goto_0
    return v3

    .line 1117
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1118
    .local v2, photoData:[B
    const/4 v4, 0x0

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1119
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache$ContactData;->this$1:Lcom/android/mms/ui/MessageListAdapter$AvatarCache;

    iget-object v5, v5, Lcom/android/mms/ui/MessageListAdapter$AvatarCache;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListAdapter;->access$000(Lcom/android/mms/ui/MessageListAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache$ContactData;->mPhoto:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    const/4 v3, 0x1

    goto :goto_0

    .line 1121
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #photoData:[B
    :catch_0
    move-exception v1

    .line 1122
    .local v1, ex:Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public getAvatar()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache$ContactData;->mPhoto:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache$ContactData;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method
