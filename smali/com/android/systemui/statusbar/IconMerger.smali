.class public Lcom/android/systemui/statusbar/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"


# instance fields
.field private mIconSize:I

.field private mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v1, 0x0

    const v2, 0x7f02005b

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    const-string v1, "more"

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/systemui/statusbar/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addView(Lcom/android/systemui/statusbar/StatusBarIconView;I)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to put view before the more view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 25

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    sub-int v15, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/IconMerger;->getChildCount()I

    move-result v5

    const/4 v13, -0x1

    const/16 v21, 0x1

    sub-int v14, v5, v21

    :goto_0
    if-ltz v14, :cond_0

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v16, v0

    const/4 v12, -0x1

    const/16 v20, -0x1

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v5, :cond_4

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_3

    add-int/lit8 v20, v14, 0x1

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    :cond_4
    if-eqz v16, :cond_5

    if-gez v20, :cond_6

    :cond_5
    :goto_2
    return-void

    :cond_6
    const/4 v6, 0x0

    sub-int v21, v13, v12

    move/from16 v0, v21

    move v1, v15

    if-gt v0, v1, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/StatusBarIconView;->getLeft()I

    move-result v21

    sub-int v6, v12, v21

    sub-int/2addr v12, v6

    sub-int/2addr v13, v6

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/StatusBarIconView;->getBottom()I

    move-result v24

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    :cond_7
    sub-int v11, v13, p4

    const/16 v19, -0x1

    add-int v21, v12, v11

    add-int v7, v21, v6

    const/16 v18, 0x0

    move/from16 v14, v20

    :goto_3
    if-ge v14, v5, :cond_c

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getLeft()I

    move-result v9

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getRight()I

    move-result v10

    if-ge v9, v7, :cond_a

    const/16 v21, 0x0

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getBottom()I

    move-result v24

    move-object v0, v8

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    move/from16 v17, v0

    if-nez v17, :cond_9

    add-int/lit8 v18, v18, 0x1

    :cond_8
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_9
    if-lez v17, :cond_8

    add-int v18, v18, v17

    goto :goto_4

    :cond_a
    if-gez v19, :cond_b

    sub-int v19, v9, v12

    :cond_b
    sub-int v21, v9, v19

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v22

    sub-int v23, v10, v19

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getBottom()I

    move-result v24

    move-object v0, v8

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    goto/16 :goto_2
.end method
