.class public Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SavedMsgsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/SavedMsgsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/mms/ui/SavedMsgsList;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/ui/SavedMsgsList;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p3, sdcardFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    iput-object p1, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    .line 289
    const v0, 0x7f030074

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->mFiles:Ljava/util/ArrayList;

    .line 290
    iput-object p2, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->mContext:Landroid/content/Context;

    .line 291
    iput-object p3, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->mFiles:Ljava/util/ArrayList;

    .line 292
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 296
    move-object v5, p2

    .line 297
    .local v5, item:Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 304
    .local v6, itemFile:Ljava/io/File;
    if-nez v5, :cond_0

    .line 305
    iget-object v7, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/samsung/mms/ui/SavedMsgsList;->access$800(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030074

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 308
    :cond_0
    const v7, 0x7f0e01d7

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 309
    .local v4, fileTypeIcon:Landroid/widget/ImageView;
    const v7, 0x7f0e01da

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 310
    .local v3, fileSize:Landroid/widget/TextView;
    const v7, 0x7f0e01d9

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 312
    .local v0, fileBottomLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 313
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "extSdCard"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 314
    iget-object v7, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02027a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    :goto_0
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 319
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    :goto_1
    const v7, 0x7f0e01d8

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 327
    .local v2, fileName:Landroid/widget/TextView;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    const v7, 0x7f0e01db

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 330
    .local v1, fileDate:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    iget-object v10, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/mms/ui/SavedMsgsList;->formatDate(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    return-object v5

    .line 316
    .end local v1           #fileDate:Landroid/widget/TextView;
    .end local v2           #fileName:Landroid/widget/TextView;
    :cond_1
    iget-object v7, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020279

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    iget-object v7, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/samsung/mms/ui/SavedMsgsList;->formatSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
