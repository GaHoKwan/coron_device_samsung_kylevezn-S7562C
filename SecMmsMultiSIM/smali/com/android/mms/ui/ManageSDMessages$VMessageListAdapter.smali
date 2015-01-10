.class public Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageSDMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSDMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VMessageListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field Inflater:Landroid/view/LayoutInflater;

.field arMsg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MsgItem;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field layout:I

.field final synthetic this$0:Lcom/android/mms/ui/ManageSDMessages;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ManageSDMessages;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MsgItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p4, arMsg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MsgItem;>;"
    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 667
    iput-object p2, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->context:Landroid/content/Context;

    .line 668
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->Inflater:Landroid/view/LayoutInflater;

    .line 669
    iput-object p4, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    .line 670
    iput p3, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->layout:I

    .line 671
    return-void
.end method


# virtual methods
.method protected formatMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 14
    .parameter "boxId"
    .parameter "addr"
    .parameter "body"
    .parameter "date"

    .prologue
    .line 728
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v10, "h:mma, yyyy MMM dd"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 729
    .local v8, sdf1:Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "h:mma, MMM dd"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v9, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 730
    .local v9, sdf2:Ljava/text/SimpleDateFormat;
    const/4 v7, 0x0

    .line 733
    .local v7, parse_date:Ljava/util/Date;
    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 736
    iget-object v10, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 740
    :goto_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 742
    .local v2, buf:Landroid/text/SpannableStringBuilder;
    const/4 v6, 0x0

    .line 743
    .local v6, endname:I
    const/4 v5, 0x0

    .line 745
    .local v5, endBody:I
    const-string v3, ""

    .line 746
    .local v3, displayaddr:Ljava/lang/String;
    const-string v1, "arrow"

    .line 748
    .local v1, arrow:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 749
    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    .line 752
    :cond_0
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 753
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 754
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 756
    const/4 v10, 0x1

    if-ne p1, v10, :cond_1

    .line 757
    new-instance v10, Landroid/text/style/ImageSpan;

    iget-object v11, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->context:Landroid/content/Context;

    const v12, 0x7f020246

    invoke-direct {v10, v11, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 766
    :goto_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 768
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 769
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 772
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 773
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 774
    new-instance v10, Landroid/text/style/TextAppearanceSpan;

    iget-object v11, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->context:Landroid/content/Context;

    const v12, 0x2070011

    invoke-direct {v10, v11, v12}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v2, v10, v5, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 777
    new-instance v10, Landroid/text/style/TextAppearanceSpan;

    iget-object v11, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->context:Landroid/content/Context;

    const v12, 0x207000f

    invoke-direct {v10, v11, v12}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v11, 0x0

    const/16 v12, 0x21

    invoke-virtual {v2, v10, v11, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 780
    return-object v2

    .line 737
    .end local v1           #arrow:Ljava/lang/String;
    .end local v2           #buf:Landroid/text/SpannableStringBuilder;
    .end local v3           #displayaddr:Ljava/lang/String;
    .end local v5           #endBody:I
    .end local v6           #endname:I
    :catch_0
    move-exception v4

    .line 738
    .local v4, e:Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 761
    .end local v4           #e:Ljava/text/ParseException;
    .restart local v1       #arrow:Ljava/lang/String;
    .restart local v2       #buf:Landroid/text/SpannableStringBuilder;
    .restart local v3       #displayaddr:Ljava/lang/String;
    .restart local v5       #endBody:I
    .restart local v6       #endname:I
    :cond_1
    new-instance v10, Landroid/text/style/ImageSpan;

    iget-object v11, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->context:Landroid/content/Context;

    const v12, 0x7f020245

    invoke-direct {v10, v11, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$800(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 660
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgItem;

    iget-object v0, v0, Lcom/android/mms/ui/MsgItem;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 684
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    .line 687
    const/4 v8, 0x0

    .line 688
    .local v8, view:Landroid/view/View;
    const/4 v5, 0x0

    .line 690
    .local v5, holder:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 693
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 694
    .local v6, tag:Ljava/lang/Object;
    instance-of v9, v6, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;

    if-eqz v9, :cond_0

    .line 695
    move-object v8, p2

    move-object v5, v6

    .line 696
    check-cast v5, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;

    .line 700
    .end local v6           #tag:Ljava/lang/Object;
    :cond_0
    if-nez v5, :cond_1

    .line 703
    new-instance v5, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;

    .end local v5           #holder:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;
    invoke-direct {v5, p0}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;-><init>(Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;)V

    .line 704
    .restart local v5       #holder:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;
    iget-object v9, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->Inflater:Landroid/view/LayoutInflater;

    const v10, 0x7f03004a

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 706
    const v9, 0x7f0e012e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v5, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->body:Landroid/widget/TextView;

    .line 707
    const v9, 0x7f0e012d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, v5, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 708
    invoke-virtual {v8, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 711
    :cond_1
    iget-object v7, v5, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->body:Landroid/widget/TextView;

    .line 712
    .local v7, txt:Landroid/widget/TextView;
    iget-object v3, v5, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 713
    .local v3, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 714
    check-cast p3, Landroid/widget/ListView;

    .end local p3
    iget-object v9, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->headerCount:I
    invoke-static {v9}, Lcom/android/mms/ui/ManageSDMessages;->access$500(Lcom/android/mms/ui/ManageSDMessages;)I

    move-result v9

    add-int/2addr v9, p1

    invoke-virtual {p3, v9}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 716
    iget-object v9, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MsgItem;

    iget v2, v9, Lcom/android/mms/ui/MsgItem;->boxId:I

    .line 717
    .local v2, boxId:I
    iget-object v9, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MsgItem;

    iget-object v0, v9, Lcom/android/mms/ui/MsgItem;->address:Ljava/lang/String;

    .line 718
    .local v0, addr:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MsgItem;

    iget-object v1, v9, Lcom/android/mms/ui/MsgItem;->body:Ljava/lang/String;

    .line 719
    .local v1, body:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->arMsg:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MsgItem;

    iget-object v4, v9, Lcom/android/mms/ui/MsgItem;->date:Ljava/lang/String;

    .line 721
    .local v4, date:Ljava/lang/String;
    invoke-virtual {p0, v2, v0, v1, v4}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->formatMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    return-object v8
.end method
