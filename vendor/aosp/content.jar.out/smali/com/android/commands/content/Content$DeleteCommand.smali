.class Lcom/android/commands/content/Content$DeleteCommand;
.super Lcom/android/commands/content/Content$Command;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteCommand"
.end annotation


# instance fields
.field final mWhere:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "where"

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/android/commands/content/Content$Command;-><init>(Landroid/net/Uri;)V

    .line 353
    iput-object p2, p0, Lcom/android/commands/content/Content$DeleteCommand;->mWhere:Ljava/lang/String;

    .line 354
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .locals 3
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/commands/content/Content$Command;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/commands/content/Content$DeleteCommand;->mWhere:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 359
    return-void
.end method
