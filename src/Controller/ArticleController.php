<?php

namespace App\Controller;

use App\Entity\Article;
use App\Form\ArticleType;
use App\Repository\ArticleRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;

/**
 * @Route("/article", name="article_")
 */
class ArticleController extends AbstractController
{
    /**
     * @Route("", name="liste", methods={"GET"})
     */
    public function index(ArticleRepository $articleRepository): Response
    {
        return $this->render('article/index.html.twig', [
            'articles' => $articleRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="new", methods={"GET", "POST"})
     */
    public function new(Request $request, ArticleRepository $articleRepository, SluggerInterface $slugger): Response
    {
        $article = new Article();
        $article->setDateCreated(new \DateTime());

        $form = $this->createForm(ArticleType::class, $article);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $coverFile = $form->get('cover')->getData();
            if ($coverFile) {
                $coverName = pathinfo($coverFile->getClientOriginalName(), PATHINFO_FILENAME);
                // this is needed to safely include the file name as part of the URL
                $safeFilename = $slugger->slug($coverName);
                $newFilename = $safeFilename.'-'.uniqid().'.'.$coverFile->guessExtension();

                // Move the file to the directory where covers are stored
                try {
                    $coverFile->move(
                        $this->getParameter('covers_directory'),
                        $newFilename
                    );
                } catch (FileException $e) {
                    // ... handle exception if something happens during file upload
                }

                $article->setcover($newFilename);
            }

            $articleRepository->add($article, true);

            $this->addFlash('success', 'Article ajouté.');

            return $this->redirectToRoute('article_liste', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('article/new.html.twig', [
            'article' => $article,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}-ici-le-slug-de-larticle", name="details", methods={"GET"})
     */
    public function show(Article $article): Response
    {
        return $this->render('article/show.html.twig', [
            'article' => $article,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="editer", methods={"GET","POST"})
     */
    public function edit(Request $request, Article $article, ArticleRepository $articleRepository, SluggerInterface $slugger): Response
    {
        $form = $this->createForm(ArticleType::class, $article);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $coverFile = $form->get('cover')->getData();
            if ($coverFile) {
                $coverName = pathinfo($coverFile->getClientOriginalName(), PATHINFO_FILENAME);
                // this is needed to safely include the file name as part of the URL
                $safeFilename = $slugger->slug($coverName);
                $newFilename = $safeFilename.'-'.uniqid().'.'.$coverFile->guessExtension();

                // Move the file to the directory where covers are stored
                try {
                    $coverFile->move(
                        $this->getParameter('covers_directory'),
                        $newFilename
                    );
                } catch (FileException $e) {
                    // ... handle exception if something happens during file upload
                }

                $article->setcover($newFilename);
            }

            $articleRepository->add($article, true);
            $this->addFlash('success', 'Article modifié.');

            return $this->redirectToRoute('article_details', ['id'=>$article->getId()], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('article/edit.html.twig', [
            'article' => $article,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}", name="delete", methods={"POST"})
     */
    public function delete(Request $request, Article $article, ArticleRepository $articleRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$article->getId(), $request->request->get('_token'))) {
            $articleRepository->remove($article, true);
        }

        return $this->redirectToRoute('article_liste', [], Response::HTTP_SEE_OTHER);
    }

    /**
     * @Route("/admin", name="admin", methods={"GET", "POST"})
     */
    public function admin(ArticleRepository $articleRepository): Response
    {
        return $this->render('article/admin.html.twig', [
            'articles' => $articleRepository->findAll(),
        ]);
    }
}
