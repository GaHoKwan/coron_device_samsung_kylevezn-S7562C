.class Lcom/android/mms/ui/MessageListAdapter$AvatarCache;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AvatarCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListAdapter$AvatarCache$ContactData;
    }
.end annotation


# static fields
.field private static final EMAIL_LOOKUP_CONTACT_ID_COLUMN_INDEX:I = 0x0

.field private static final EMAIL_LOOKUP_CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x1

.field private static final PHONE_LOOKUP_CONTACT_ID_COLUMN_INDEX:I = 0x0

.field private static final PHONE_LOOKUP_CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x1

.field private static final PHOTO_ID:I = 0x1

.field private static final TOKEN_CONTACT_INFO:I = 0xc9

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x66

.field private static final TOKEN_PHONE_LOOKUP:I = 0x65

.field private static final TOKEN_PHOTO_DATA:I = 0x12d


# instance fields
.field private final COLUMNS:[Ljava/lang/String;

.field private final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

.field private final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field mDefaultAvatarDrawable:Landroid/graphics/drawable/Drawable;

.field mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/MessageListAdapter$AvatarCache$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1238
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "photo_id"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache;->COLUMNS:[Ljava/lang/String;

    .line 1047
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 1055
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 1067
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache;->mImageCache:Ljava/util/HashMap;

    .line 1179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$AvatarCache;->mDefaultAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 1239
    return-void
.end method
