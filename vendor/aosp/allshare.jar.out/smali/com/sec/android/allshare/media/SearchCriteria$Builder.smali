.class public Lcom/sec/android/allshare/media/SearchCriteria$Builder;
.super Ljava/lang/Object;
.source "SearchCriteria.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/media/SearchCriteria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mKeyword:Ljava/lang/String;

.field private mMediaTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item$MediaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iget-object v0, p0, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->mKeyword:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->mKeyword:Ljava/lang/String;

    .line 85
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->mMediaTypes:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/media/SearchCriteria$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/media/SearchCriteria$Builder;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->mMediaTypes:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addItemType(Lcom/sec/android/allshare/Item$MediaType;)Lcom/sec/android/allshare/media/SearchCriteria$Builder;
    .locals 1
    .parameter "type"

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->mMediaTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    return-object p0
.end method

.method public build()Lcom/sec/android/allshare/media/SearchCriteria;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/sec/android/allshare/media/SearchCriteria;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/allshare/media/SearchCriteria;-><init>(Lcom/sec/android/allshare/media/SearchCriteria$Builder;Lcom/sec/android/allshare/media/SearchCriteria$1;)V

    return-object v0
.end method

.method public setKeyword(Ljava/lang/String;)Lcom/sec/android/allshare/media/SearchCriteria$Builder;
    .locals 0
    .parameter "value"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->mKeyword:Ljava/lang/String;

    .line 97
    return-object p0
.end method
