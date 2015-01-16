.class Lcom/android/commands/content/Content$InsertCommand;
.super Lcom/android/commands/content/Content$Command;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InsertCommand"
.end annotation


# instance fields
.field final mContentValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "uri"
    .parameter "contentValues"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/android/commands/content/Content$Command;-><init>(Landroid/net/Uri;)V

    .line 339
    iput-object p2, p0, Lcom/android/commands/content/Content$InsertCommand;->mContentValues:Landroid/content/ContentValues;

    .line 340
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .locals 2
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/commands/content/Content$Command;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/commands/content/Content$InsertCommand;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {p1, v0, v1}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 345
    return-void
.end method
