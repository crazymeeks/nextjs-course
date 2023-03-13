import { useRouter } from 'next/router';

const PortfolioProjectPage = () => {
    const router = useRouter();
    const project = router.query.projectid;
    return <div>
        <h1>The {project} Project</h1>
    </div>
};

export default PortfolioProjectPage;